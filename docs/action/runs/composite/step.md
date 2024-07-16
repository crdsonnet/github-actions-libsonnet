# step



## Index

* [`fn withContinueOnError(value=false)`](#fn-withcontinueonerror)
* [`fn withContinueOnErrorMixin(value=false)`](#fn-withcontinueonerrormixin)
* [`fn withEnv(value)`](#fn-withenv)
* [`fn withEnvMixin(value)`](#fn-withenvmixin)
* [`fn withId(value)`](#fn-withid)
* [`fn withIf(value)`](#fn-withif)
* [`fn withName(value)`](#fn-withname)
* [`fn withRun(value)`](#fn-withrun)
* [`fn withShell(value)`](#fn-withshell)
* [`fn withUses(value)`](#fn-withuses)
* [`fn withWith(value)`](#fn-withwith)
* [`fn withWithMixin(value)`](#fn-withwithmixin)
* [`fn withWorkingDirectory(value)`](#fn-withworkingdirectory)
* [`obj continue-on-error`](#obj-continue-on-error)
  * [`fn withExpressionSyntax(value)`](#fn-continue-on-errorwithexpressionsyntax)
* [`obj env`](#obj-env)
  * [`fn withStringContainingExpressionSyntax(value)`](#fn-envwithstringcontainingexpressionsyntax)

## Fields

### fn withContinueOnError

```jsonnet
withContinueOnError(value=false)
```

PARAMETERS:

* **value** (`boolean`,`string`)
   - default value: `false`

Prevents a job from failing when a step fails. Set to true to allow a job to pass when this step fails.
### fn withContinueOnErrorMixin

```jsonnet
withContinueOnErrorMixin(value=false)
```

PARAMETERS:

* **value** (`boolean`,`string`)
   - default value: `false`

Prevents a job from failing when a step fails. Set to true to allow a job to pass when this step fails.
### fn withEnv

```jsonnet
withEnv(value)
```

PARAMETERS:

* **value** (`object`,`string`)

Sets a map of environment variables for only that step.
### fn withEnvMixin

```jsonnet
withEnvMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

Sets a map of environment variables for only that step.
### fn withId

```jsonnet
withId(value)
```

PARAMETERS:

* **value** (`string`)

A unique identifier for the step. You can use the `id` to reference the step in contexts.
### fn withIf

```jsonnet
withIf(value)
```

PARAMETERS:

* **value** (`string`)

You can use the if conditional to prevent a step from running unless a condition is met. You can use any supported context and expression to create a conditional.
Expressions in an if conditional do not require the ${{ }} syntax. For more information, see https://help.github.com/en/articles/contexts-and-expression-syntax-for-github-actions.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the composite run step.
### fn withRun

```jsonnet
withRun(value)
```

PARAMETERS:

* **value** (`string`)

The command you want to run. This can be inline or a script in your action repository.
### fn withShell

```jsonnet
withShell(value)
```

PARAMETERS:

* **value** (`string`)

The shell where you want to run the command.
### fn withUses

```jsonnet
withUses(value)
```

PARAMETERS:

* **value** (`string`)

Selects an action to run as part of a step in your job.
### fn withWith

```jsonnet
withWith(value)
```

PARAMETERS:

* **value** (`object`)

A map of the input parameters defined by the action. Each input parameter is a key/value pair. Input parameters are set as environment variables. The variable is prefixed with INPUT_ and converted to upper case.
### fn withWithMixin

```jsonnet
withWithMixin(value)
```

PARAMETERS:

* **value** (`object`)

A map of the input parameters defined by the action. Each input parameter is a key/value pair. Input parameters are set as environment variables. The variable is prefixed with INPUT_ and converted to upper case.
### fn withWorkingDirectory

```jsonnet
withWorkingDirectory(value)
```

PARAMETERS:

* **value** (`string`)

Specifies the working directory where the command is run.
### obj continue-on-error


#### fn continue-on-error.withExpressionSyntax

```jsonnet
continue-on-error.withExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


### obj env


#### fn env.withStringContainingExpressionSyntax

```jsonnet
env.withStringContainingExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)

