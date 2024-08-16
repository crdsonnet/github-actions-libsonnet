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
* [`fn withShellMixin(value)`](#fn-withshellmixin)
* [`fn withTimeoutMinutes(value)`](#fn-withtimeoutminutes)
* [`fn withTimeoutMinutesMixin(value)`](#fn-withtimeoutminutesmixin)
* [`fn withUses(value)`](#fn-withuses)
* [`fn withWith(value)`](#fn-withwith)
* [`fn withWithMixin(value)`](#fn-withwithmixin)
* [`fn withWorkingDirectory(value)`](#fn-withworkingdirectory)
* [`obj continue-on-error`](#obj-continue-on-error)
  * [`fn withExpressionSyntax(value)`](#fn-continue-on-errorwithexpressionsyntax)
* [`obj env`](#obj-env)
  * [`fn withStringContainingExpressionSyntax(value)`](#fn-envwithstringcontainingexpressionsyntax)
* [`obj timeout-minutes`](#obj-timeout-minutes)
  * [`fn withExpressionSyntax(value)`](#fn-timeout-minuteswithexpressionsyntax)
* [`obj with`](#obj-with)
  * [`fn withStringContainingExpressionSyntax(value)`](#fn-withwithstringcontainingexpressionsyntax)

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

To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv
### fn withEnvMixin

```jsonnet
withEnvMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv
### fn withId

```jsonnet
withId(value)
```

PARAMETERS:

* **value** (`string`)

A unique identifier for the step. You can use the id to reference the step in contexts. For more information, see https://help.github.com/en/articles/contexts-and-expression-syntax-for-github-actions.
### fn withIf

```jsonnet
withIf(value)
```

PARAMETERS:

* **value** (`boolean`,`number`,`string`)

You can use the if conditional to prevent a step from running unless a condition is met. You can use any supported context and expression to create a conditional.
Expressions in an if conditional do not require the ${{ }} syntax. For more information, see https://help.github.com/en/articles/contexts-and-expression-syntax-for-github-actions.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

A name for your step to display on GitHub.
### fn withRun

```jsonnet
withRun(value)
```

PARAMETERS:

* **value** (`string`)

Runs command-line programs using the operating system's shell. If you do not provide a name, the step name will default to the text specified in the run command.
Commands run using non-login shells by default. You can choose a different shell and customize the shell used to run commands. For more information, see https://help.github.com/en/actions/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#using-a-specific-shell.
Each run keyword represents a new process and shell in the virtual environment. When you provide multi-line commands, each line runs in the same shell.
### fn withShell

```jsonnet
withShell(value)
```

PARAMETERS:

* **value** (`string`)

You can override the default shell settings in the runner's operating system using the shell keyword. You can use built-in shell keywords, or you can define a custom set of shell options.
### fn withShellMixin

```jsonnet
withShellMixin(value)
```

PARAMETERS:

* **value** (`string`)

You can override the default shell settings in the runner's operating system using the shell keyword. You can use built-in shell keywords, or you can define a custom set of shell options.
### fn withTimeoutMinutes

```jsonnet
withTimeoutMinutes(value)
```

PARAMETERS:

* **value** (`number`,`string`)

The maximum number of minutes to run the step before killing the process.
### fn withTimeoutMinutesMixin

```jsonnet
withTimeoutMinutesMixin(value)
```

PARAMETERS:

* **value** (`number`,`string`)

The maximum number of minutes to run the step before killing the process.
### fn withUses

```jsonnet
withUses(value)
```

PARAMETERS:

* **value** (`string`)

Selects an action to run as part of a step in your job. An action is a reusable unit of code. You can use an action defined in the same repository as the workflow, a public repository, or in a published Docker container image (https://hub.docker.com/).
We strongly recommend that you include the version of the action you are using by specifying a Git ref, SHA, or Docker tag number. If you don't specify a version, it could break your workflows or cause unexpected behavior when the action owner publishes an update.
- Using the commit SHA of a released action version is the safest for stability and security.
- Using the specific major action version allows you to receive critical fixes and security patches while still maintaining compatibility. It also assures that your workflow should still work.
- Using the master branch of an action may be convenient, but if someone releases a new major version with a breaking change, your workflow could break.
Some actions require inputs that you must set using the with keyword. Review the action's README file to determine the inputs required.
Actions are either JavaScript files or Docker containers. If the action you're using is a Docker container you must run the job in a Linux virtual environment. For more details, see https://help.github.com/en/articles/virtual-environments-for-github-actions.
### fn withWith

```jsonnet
withWith(value)
```

PARAMETERS:

* **value** (`object`,`string`)

To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv
### fn withWithMixin

```jsonnet
withWithMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv
### fn withWorkingDirectory

```jsonnet
withWorkingDirectory(value)
```

PARAMETERS:

* **value** (`string`)

Using the working-directory keyword, you can specify the working directory of where to run the command.
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


### obj timeout-minutes


#### fn timeout-minutes.withExpressionSyntax

```jsonnet
timeout-minutes.withExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


### obj with


#### fn with.withStringContainingExpressionSyntax

```jsonnet
with.withStringContainingExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)

