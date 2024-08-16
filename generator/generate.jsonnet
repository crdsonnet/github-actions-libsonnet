local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local helpers = import 'github.com/crdsonnet/crdsonnet/crdsonnet/helpers.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local astRenderEngine = import 'github.com/crdsonnet/crdsonnet/crdsonnet/renderEngines/ast.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local actionSchema = import 'github.com/SchemaStore/schemastore/src/schemas/json/github-action.json';

local schema =
  (import 'github.com/SchemaStore/schemastore/src/schemas/json/github-workflow.json')
  + {
    properties+: {
      concurrency+: {
        oneOf: [
          super.oneOf[0],
          // reduce level
          schema.definitions.concurrency,
        ],
      },
    },
    definitions+: {
      // CRDsonnet fix: remove oneOf validation as not relevant to the generation process
      ref: std.mergePatch(super.ref, { type: 'object', oneOf: null }),
      // CRDsonnet fix: always resolve to type:object and not type:null
      eventObject: { type: 'object' },
      normalJob+: {
        properties+: {
          steps:: {},
          local steps = super.steps,
          step: steps + {
            // CRDsonnet fix: remove allOf validation as not relevant to the generation process
            items: steps.items.allOf[1],
          },
          // reduce level without reducing functionality
          container+: schema.definitions.container,
          concurrency+: {
            oneOf: [
              super.oneOf[0],
              // reduce level
              schema.definitions.concurrency,
            ],
          },
        },
      },
      permissions+: {
        oneOf: [
          super.oneOf[0],
          // reduce level
          schema.definitions['permissions-event'],
        ],
      },
    },
  }
;

local jobSchema =
  std.mergePatch(schema, { properties: null, required: null })
  + { '$ref': '#/definitions/normalJob' };

local actionCompositeSchema =
  actionSchema
  + {
    properties+: {
      runs:
        actionSchema.definitions['runs-composite']
        + {
          properties+: {
            steps:: {},
            local steps = super.steps,
            step: steps,
          },
        },
      outputs: actionSchema.definitions['outputs-composite'],
    },
  };
local compositeOutputsSchema = actionSchema.definitions['outputs-composite'].patternProperties['^[_a-zA-Z][a-zA-Z0-9_-]*$'];

local actionDockerSchema =
  actionSchema
  + {
    properties+: {
      runs: actionSchema.definitions['runs-docker'],
      outputs: actionSchema.definitions.outputs,
    },
  };

local actionJavascriptSchema =
  actionSchema
  + {
    properties+: {
      runs: actionSchema.definitions['runs-javascript'],
      outputs: actionSchema.definitions.outputs,
    },
  };


local actionInputsSchema =
  actionSchema.properties.inputs.patternProperties['^[_a-zA-Z][a-zA-Z0-9_-]*$'];
local actionOutputsSchema =
  actionSchema.definitions.outputs.patternProperties['^[_a-zA-Z][a-zA-Z0-9_-]*$'];

local processor = crdsonnet.processor.new('ast');


local subPackageDocstring(name, help='') =
  a.object.new([
    a.field.new(
      a.string.new('#'),
      a.literal.new(
        std.manifestJsonEx(
          d.package.newSub(name, help)
          , '  ', ''
        ),
      ),
    ),
  ]);

local mergeDocstring(name, obj, help='') =
  autils.deepMergeObjects([
    a.object.new([
      a.field.new(
        a.id.new(name),
        subPackageDocstring(name, help)
      ),
    ]),
    obj,
  ]);

local runsHelp(using) = actionSchema.definitions['runs-%s' % using].description;

local forUsing(using, schema, inputsSchema, outputsSchema) =
  a.object.new([
    a.field.new(
      a.id.new('action'),
      mergeDocstring(
        using,
        autils.deepMergeObjects([
          crdsonnet.schema.render(using, schema, processor),
          a.object.new([
            a.field.new(
              a.id.new(using),
              mergeDocstring(
                'input',
                crdsonnet.schema.render('input', inputsSchema, processor),
              )
            ),
          ]),
          a.object.new([
            a.field.new(
              a.id.new(using),
              mergeDocstring(
                'output',
                crdsonnet.schema.render('output', outputsSchema, processor),
              )
            ),
          ]),
        ]),
        runsHelp(using),
      ),
    )
    + a.field.withAdditive(),
  ]);

local actionTree =
  mergeDocstring(
    'action',
    autils.deepMergeObjects([
      forUsing(
        'composite',
        actionCompositeSchema,
        actionInputsSchema,
        compositeOutputsSchema
      ),
      forUsing(
        'docker',
        actionDockerSchema,
        actionInputsSchema,
        actionOutputsSchema
      ),
      forUsing(
        'javascript',
        actionJavascriptSchema,
        actionInputsSchema,
        actionOutputsSchema
      ),
    ]),
    |||
      ```jsonnet
      %(jsonnet)s
      ```

      This can be rendered into a Yaml file like so:

      ```console
      jsonnet -S action.jsonnet
      ```

      The output will look like this:
      ```yaml
      %(output)s
      ```
    ||| % {
      jsonnet:
        std.strReplace(
          importstr '../examples/action.jsonnet',
          '../main.libsonnet',
          'github.com/crdsonnet/github-actions-libsonnet/main.libsonnet',
        ),
      output:
        std.rstripChars(importstr '../examples/action.output.yaml', '\n'),
    }
  );

local workflowTree =
  mergeDocstring(
    'workflow',
    autils.deepMergeObjects([
      a.object.new([
        a.field.new(
          a.id.new('workflow'),
          mergeDocstring(
            'job',
            crdsonnet.schema.render('job', jobSchema, processor),
          ),
        ),
      ]),
      crdsonnet.schema.render('workflow', schema, processor),
    ]),
    |||
      ```jsonnet
      %(jsonnet)s
      ```

      This can be rendered into a Yaml file like so:

      ```console
      jsonnet -S workflow.jsonnet
      ```

      The output will look like this:
      ```yaml
      %(output)s
      ```
    ||| % {
      jsonnet:
        std.strReplace(
          importstr '../examples/workflow.jsonnet',
          '../main.libsonnet',
          'github.com/crdsonnet/github-actions-libsonnet/main.libsonnet',
        ),
      output:
        std.rstripChars(importstr '../examples/workflow.output.yaml', '\n'),
    },
  );

local docstring =
  a.object.new([
    a.field.new(
      a.string.new('#'),
      a.literal.new(
        std.manifestJsonEx(
          d.package.new(
            'github-actions-libsonnet',
            'github.com/crdsonnet/github-actions-libsonnet',
            'Jsonnet library to create workflows and actions for GitHub Actions.',
            'main.libsonnet',
            'main',
          )
          + d.package.withUsageTemplate(
            'local ga = import "%(import)s"'
          )
          , '  ', '\n'
        ),
      ),
    ),
  ]);

'// DO NOT EDIT: generated by generator/generate.jsonnet\n'
+ (
  autils.deepMergeObjects(
    [
      docstring,
      actionTree,
      workflowTree,
    ]
  )
).toString()
