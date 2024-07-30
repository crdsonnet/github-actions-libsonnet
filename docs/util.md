# util



## Index

* [`fn manifestAction(action)`](#fn-manifestaction)
* [`fn manifestWorkflow(workflow)`](#fn-manifestworkflow)

## Fields

### fn manifestAction

```jsonnet
manifestAction(action)
```

PARAMETERS:

* **action** (`object`)

`manifestAction` manifests an action in an opinionated Yaml format.

It manifest fields in the same order as they show up in the syntax docs:
https://docs.github.com/en/actions/creating-actions/metadata-syntax-for-github-actions

### fn manifestWorkflow

```jsonnet
manifestWorkflow(workflow)
```

PARAMETERS:

* **workflow** (`object`)

`manifestWorkflow` manifests a workflow in an opinionated Yaml format.

It manifest fields in the same order as they show up in the syntax docs:
https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions
