local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local util = import './util.libsonnet';

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
  };

local jobSchema =
  std.mergePatch(schema, { properties: null, required: null })
  + { '$ref': '#/definitions/normalJob' };

local tree =
  util.mergeDocstring(
    'workflow',
    autils.deepMergeObjects([
      a.object.new([
        a.field.new(
          a.id.new('workflow'),
          util.mergeDocstring(
            'job',
            crdsonnet.schema.render('job', jobSchema, util.processor),
          ),
        ),
      ]),
      crdsonnet.schema.render('workflow', schema, util.processor),
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

tree
