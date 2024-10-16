local ga = import '../main.libsonnet';
local job = ga.workflow.job;

local exampleWorkflow =
  ga.workflow.new('example workflow')
  + ga.workflow.on.pull_request.withBranches(['main'])
  + ga.workflow.withJobs({
    example:
      job.withRunsOn('ubuntu-latest')
      + job.withSteps([
        job.step.withName('Checkout')
        + job.step.withUses('actions/checkout@v4'),
      ]),
  });

exampleWorkflow.manifest()
