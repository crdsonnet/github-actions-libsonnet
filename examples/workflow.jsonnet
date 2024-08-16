local ga = import '../main.libsonnet';

local exampleWorkflow =
  ga.workflow.withName('example workflow')
  + ga.workflow.on.pull_request.withBranches(['main'])
  + ga.workflow.withJobs({
    example:
      ga.job.withRunsOn('ubuntu-latest')
      + ga.job.withSteps([
        ga.job.step.withName('Checkout')
        + ga.job.step.withUses('actions/checkout@v4'),
      ]),
  });

ga.util.manifestWorkflow(exampleWorkflow)
