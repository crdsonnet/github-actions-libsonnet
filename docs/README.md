# github-actions-libsonnet

Jsonnet library to create GitHub actions workflows.
## Install

```
jb install github.com/crdsonnet/github-actions-libsonnet@main
```

## Usage

```jsonnet
local ga = import 'github.com/crdsonnet/github-actions-libsonnet/main.libsonnet';

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
```

This can be rendered into a Yaml file like so:

```console
jsonnet -S workflow.jsonnet
```

The output will look like this:
```yaml
name: "example workflow"

on:
  pull_request:
    branches:
      - "main"

jobs:
  example:
    runs-on: "ubuntu-latest"
    steps:
      - name: "Checkout"
        uses: "actions/checkout@v4"
```


## Subpackages

* [action](action/index.md)
* [job](job/index.md)
* [util](util.md)
* [workflow](workflow.md)
