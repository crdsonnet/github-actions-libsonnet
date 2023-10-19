// static.libsonnet
local refactor = import './refactor.libsonnet';
local jutils = import 'github.com/Duologic/jsonnet-libsonnet/utils.libsonnet';
local schema = import 'github.com/SchemaStore/schemastore/src/schemas/json/github-workflow.json';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local processor = refactor.ASTProcessor;


local unwrapFromCRDsonnet(astObject, title) =
  jutils.get(
    astObject,
    title,
    default=error 'field %s not found in ast' % title
  ).expr;


{
  'workflow.libsonnet': unwrapFromCRDsonnet(crdsonnet.schema.render('workflow', schema, processor), 'workflow').toString(break='\n'),
  local jobSchema = schema.definitions.normalJob
                    { properties+: {
    steps+: {
      items+: {
        allOf: std.slice(super.allOf, 1, std.length(super.allOf), 1),
      },
    },
  } },
  'normalJob.libsonnet': unwrapFromCRDsonnet(crdsonnet.schema.render('normalJob', jobSchema, processor), 'normalJob').toString(break='\n'),
  'reusableWorkflowCallJob.libsonnet': unwrapFromCRDsonnet(crdsonnet.schema.render('reusableWorkflowCallJob', schema.definitions.reusableWorkflowCallJob, processor), 'reusableWorkflowCallJob').toString(break='\n'),
}
