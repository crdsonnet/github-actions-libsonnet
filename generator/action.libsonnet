local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';

local util = import './util.libsonnet';

local schema = import 'github.com/SchemaStore/schemastore/src/schemas/json/github-action.json';

local compositeSchema =
  schema
  + {
    properties+: {
      runs:
        schema.definitions['runs-composite']
        + {
          properties+: {
            steps:: {},
            local steps = super.steps,
            step: steps,
          },
        },
      outputs: schema.definitions['outputs-composite'],
    },
  };

local compositeOutputsSchema =
  schema.definitions['outputs-composite'].patternProperties['^[_a-zA-Z][a-zA-Z0-9_-]*$'];

local dockerSchema =
  schema
  + {
    properties+: {
      runs: schema.definitions['runs-docker'],
      outputs: schema.definitions.outputs,
    },
  };

local javascriptSchema =
  schema
  + {
    properties+: {
      runs: schema.definitions['runs-javascript'],
      outputs: schema.definitions.outputs,
    },
  };

local inputsSchema =
  schema.properties.inputs.patternProperties['^[_a-zA-Z][a-zA-Z0-9_-]*$'];

local outputsSchema =
  schema.definitions.outputs.patternProperties['^[_a-zA-Z][a-zA-Z0-9_-]*$'];

local runsHelp(using) =
  schema.definitions['runs-%s' % using].description;

local forUsing(using, schema, inputsSchema, outputsSchema) =
  a.object.new([
    a.field.new(
      a.id.new('action'),
      util.mergeDocstring(
        using,
        autils.deepMergeObjects([
          crdsonnet.schema.render(using, schema, util.processor),
          a.object.new([
            a.field.new(
              a.id.new(using),
              util.mergeDocstring(
                'input',
                crdsonnet.schema.render('input', inputsSchema, util.processor),
              )
            ),
          ]),
          a.object.new([
            a.field.new(
              a.id.new(using),
              util.mergeDocstring(
                'output',
                crdsonnet.schema.render('output', outputsSchema, util.processor),
              )
            ),
          ]),
        ]),
        runsHelp(using),
      ),
    )
    + a.field.withAdditive(),
  ]);

local tree =
  util.mergeDocstring(
    'action',
    autils.deepMergeObjects([
      forUsing(
        'composite',
        compositeSchema,
        inputsSchema,
        compositeOutputsSchema
      ),
      forUsing(
        'docker',
        dockerSchema,
        inputsSchema,
        outputsSchema
      ),
      forUsing(
        'javascript',
        javascriptSchema,
        inputsSchema,
        outputsSchema
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

tree
