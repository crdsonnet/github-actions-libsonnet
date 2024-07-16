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

std.manifestYamlDoc(exampleWorkflow, indent_array_in_object=true, quote_keys=false)

```


## Subpackages

* [action](action/index.md)
* [job](job/index.md)
* [workflow](workflow.md)

## Index

* [`obj actionInput`](#obj-actioninput)
  * [`fn withDefault(value)`](#fn-actioninputwithdefault)
  * [`fn withDeprecationMessage(value)`](#fn-actioninputwithdeprecationmessage)
  * [`fn withDescription(value)`](#fn-actioninputwithdescription)
  * [`fn withRequired(value=true)`](#fn-actioninputwithrequired)

## Fields

### obj actionInput


#### fn actionInput.withDefault

```jsonnet
actionInput.withDefault(value)
```

PARAMETERS:

* **value** (`string`)

A string representing the default value. The default value is used when an input parameter isn't specified in a workflow file.
#### fn actionInput.withDeprecationMessage

```jsonnet
actionInput.withDeprecationMessage(value)
```

PARAMETERS:

* **value** (`string`)

A string shown to users using the deprecated input.
#### fn actionInput.withDescription

```jsonnet
actionInput.withDescription(value)
```

PARAMETERS:

* **value** (`string`)

A string description of the input parameter.
#### fn actionInput.withRequired

```jsonnet
actionInput.withRequired(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

A boolean to indicate whether the action requires the input parameter. Set to `true` when the parameter is required.