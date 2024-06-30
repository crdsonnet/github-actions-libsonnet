local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local helpers = import 'github.com/crdsonnet/crdsonnet/crdsonnet/helpers.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local astRenderEngine = import 'github.com/crdsonnet/crdsonnet/crdsonnet/renderEngines/ast.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

local schema =
  (import './vendor/github.com/SchemaStore/schemastore/src/schemas/json/github-workflow.json')
  + {
    definitions+: {
      // CRDsonnet fix: remove oneOf validation as not relevant to the generation process
      ref: std.mergePatch(super.ref, { type: 'object', oneOf: null }),
      // CRDsonnet fix: always resolve to type:object and not type:null
      eventObject: { type: 'object' },
      normalJob+: {
        properties+: {
          steps+: {
            // CRDsonnet fix: remove allOf validation as not relevant to the generation process
            items: super.items.allOf[1],
          },
          // reduce level without reducing functionality
          container+: schema.definitions.container,
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

local jobschema =
  std.mergePatch(schema, { properties: null, required: null })
  + { '$ref': '#/definitions/normalJob' };

local processor = crdsonnet.processor.new('ast');

local asts = [
  crdsonnet.schema.render('workflow', schema, processor),
  crdsonnet.schema.render('job', jobschema, processor),
];

local docstring =
  a.object.new([
    a.field.new(
      a.string.new('#'),
      a.literal.new(
        std.manifestJsonEx(
          d.package.new(
            'github-actions-libsonnet',
            'github.com/crdsonnet/github-actions-libsonnet',
            'Jsonnet library to create GitHub actions workflows.',
            'main.libsonnet',
            'main',
          )
          + d.package.withUsageTemplate(
            std.strReplace(
              importstr '../example.jsonnet',
              './main.libsonnet',
              '%(import)s',
            )
          )
          , '  ', '\n'
        ),
      ),
    ),
  ]);

'// DO NOT EDIT: generated by generator/generate.jsonnet\n'
+ "{ workflow+: { '#': { help: '', name: 'workflow' } } }\n+ "
+ "{ job+: { '#': { help: '', name: 'job' } } }\n+ "
+ (
  autils.deepMergeObjects([docstring] + asts)
).toString()

//processor.parse('workflow', schema)
