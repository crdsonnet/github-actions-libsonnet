# job



## Subpackages

* [step](step.md)

## Index

* [`fn withConcurrency(value)`](#fn-withconcurrency)
* [`fn withConcurrencyMixin(value)`](#fn-withconcurrencymixin)
* [`fn withContainer(value)`](#fn-withcontainer)
* [`fn withContainerMixin(value)`](#fn-withcontainermixin)
* [`fn withContinueOnError(value)`](#fn-withcontinueonerror)
* [`fn withContinueOnErrorMixin(value)`](#fn-withcontinueonerrormixin)
* [`fn withDefaults(value)`](#fn-withdefaults)
* [`fn withDefaultsMixin(value)`](#fn-withdefaultsmixin)
* [`fn withEnv(value)`](#fn-withenv)
* [`fn withEnvMixin(value)`](#fn-withenvmixin)
* [`fn withEnvironment(value)`](#fn-withenvironment)
* [`fn withEnvironmentMixin(value)`](#fn-withenvironmentmixin)
* [`fn withIf(value)`](#fn-withif)
* [`fn withName(value)`](#fn-withname)
* [`fn withNeeds(value)`](#fn-withneeds)
* [`fn withNeedsMixin(value)`](#fn-withneedsmixin)
* [`fn withOutputs(value)`](#fn-withoutputs)
* [`fn withOutputsMixin(value)`](#fn-withoutputsmixin)
* [`fn withPermissions(value)`](#fn-withpermissions)
* [`fn withPermissionsMixin(value)`](#fn-withpermissionsmixin)
* [`fn withRunsOn(value)`](#fn-withrunson)
* [`fn withRunsOnMixin(value)`](#fn-withrunsonmixin)
* [`fn withServices(value)`](#fn-withservices)
* [`fn withServicesMixin(value)`](#fn-withservicesmixin)
* [`fn withSteps(value)`](#fn-withsteps)
* [`fn withStepsMixin(value)`](#fn-withstepsmixin)
* [`fn withStrategy(value)`](#fn-withstrategy)
* [`fn withStrategyMixin(value)`](#fn-withstrategymixin)
* [`fn withTimeoutMinutes(value=360)`](#fn-withtimeoutminutes)
* [`fn withTimeoutMinutesMixin(value=360)`](#fn-withtimeoutminutesmixin)
* [`obj concurrency`](#obj-concurrency)
  * [`fn withCancelInProgress(value)`](#fn-concurrencywithcancelinprogress)
  * [`fn withCancelInProgressMixin(value)`](#fn-concurrencywithcancelinprogressmixin)
  * [`fn withGroup(value)`](#fn-concurrencywithgroup)
  * [`obj cancel-in-progress`](#obj-concurrencycancel-in-progress)
    * [`fn withExpressionSyntax(value)`](#fn-concurrencycancel-in-progresswithexpressionsyntax)
* [`obj container`](#obj-container)
  * [`fn withContainer(value)`](#fn-containerwithcontainer)
  * [`fn withContainerMixin(value)`](#fn-containerwithcontainermixin)
  * [`fn withCredentials(value)`](#fn-containerwithcredentials)
  * [`fn withCredentialsMixin(value)`](#fn-containerwithcredentialsmixin)
  * [`fn withEnv(value)`](#fn-containerwithenv)
  * [`fn withEnvMixin(value)`](#fn-containerwithenvmixin)
  * [`fn withImage(value)`](#fn-containerwithimage)
  * [`fn withOptions(value)`](#fn-containerwithoptions)
  * [`fn withPorts(value)`](#fn-containerwithports)
  * [`fn withPortsMixin(value)`](#fn-containerwithportsmixin)
  * [`fn withVolumes(value)`](#fn-containerwithvolumes)
  * [`fn withVolumesMixin(value)`](#fn-containerwithvolumesmixin)
  * [`obj container`](#obj-containercontainer)
    * [`fn withCredentials(value)`](#fn-containercontainerwithcredentials)
    * [`fn withCredentialsMixin(value)`](#fn-containercontainerwithcredentialsmixin)
    * [`fn withEnv(value)`](#fn-containercontainerwithenv)
    * [`fn withEnvMixin(value)`](#fn-containercontainerwithenvmixin)
    * [`fn withImage(value)`](#fn-containercontainerwithimage)
    * [`fn withOptions(value)`](#fn-containercontainerwithoptions)
    * [`fn withPorts(value)`](#fn-containercontainerwithports)
    * [`fn withPortsMixin(value)`](#fn-containercontainerwithportsmixin)
    * [`fn withVolumes(value)`](#fn-containercontainerwithvolumes)
    * [`fn withVolumesMixin(value)`](#fn-containercontainerwithvolumesmixin)
    * [`obj credentials`](#obj-containercontainercredentials)
      * [`fn withPassword(value)`](#fn-containercontainercredentialswithpassword)
      * [`fn withUsername(value)`](#fn-containercontainercredentialswithusername)
    * [`obj env`](#obj-containercontainerenv)
      * [`fn withStringContainingExpressionSyntax(value)`](#fn-containercontainerenvwithstringcontainingexpressionsyntax)
  * [`obj credentials`](#obj-containercredentials)
    * [`fn withPassword(value)`](#fn-containercredentialswithpassword)
    * [`fn withUsername(value)`](#fn-containercredentialswithusername)
  * [`obj env`](#obj-containerenv)
    * [`fn withStringContainingExpressionSyntax(value)`](#fn-containerenvwithstringcontainingexpressionsyntax)
* [`obj continue-on-error`](#obj-continue-on-error)
  * [`fn withExpressionSyntax(value)`](#fn-continue-on-errorwithexpressionsyntax)
* [`obj defaults`](#obj-defaults)
  * [`fn withRun(value)`](#fn-defaultswithrun)
  * [`fn withRunMixin(value)`](#fn-defaultswithrunmixin)
  * [`obj run`](#obj-defaultsrun)
    * [`fn withShell(value)`](#fn-defaultsrunwithshell)
    * [`fn withShellMixin(value)`](#fn-defaultsrunwithshellmixin)
    * [`fn withWorkingDirectory(value)`](#fn-defaultsrunwithworkingdirectory)
* [`obj env`](#obj-env)
  * [`fn withStringContainingExpressionSyntax(value)`](#fn-envwithstringcontainingexpressionsyntax)
* [`obj environment`](#obj-environment)
  * [`fn withEnvironment(value)`](#fn-environmentwithenvironment)
  * [`fn withEnvironmentMixin(value)`](#fn-environmentwithenvironmentmixin)
  * [`obj environment`](#obj-environmentenvironment)
    * [`fn withName(value)`](#fn-environmentenvironmentwithname)
    * [`fn withUrl(value)`](#fn-environmentenvironmentwithurl)
* [`obj needs`](#obj-needs)
  * [`fn withName(value)`](#fn-needswithname)
* [`obj permissions`](#obj-permissions)
  * [`fn withActions(value)`](#fn-permissionswithactions)
  * [`fn withAttestations(value)`](#fn-permissionswithattestations)
  * [`fn withChecks(value)`](#fn-permissionswithchecks)
  * [`fn withContents(value)`](#fn-permissionswithcontents)
  * [`fn withDeployments(value)`](#fn-permissionswithdeployments)
  * [`fn withDiscussions(value)`](#fn-permissionswithdiscussions)
  * [`fn withIdToken(value)`](#fn-permissionswithidtoken)
  * [`fn withIssues(value)`](#fn-permissionswithissues)
  * [`fn withPackages(value)`](#fn-permissionswithpackages)
  * [`fn withPages(value)`](#fn-permissionswithpages)
  * [`fn withPullRequests(value)`](#fn-permissionswithpullrequests)
  * [`fn withRepositoryProjects(value)`](#fn-permissionswithrepositoryprojects)
  * [`fn withSecurityEvents(value)`](#fn-permissionswithsecurityevents)
  * [`fn withStatuses(value)`](#fn-permissionswithstatuses)
* [`obj runs-on`](#obj-runs-on)
  * [`fn withExpressionSyntax(value)`](#fn-runs-onwithexpressionsyntax)
  * [`fn withGroup(value)`](#fn-runs-onwithgroup)
  * [`fn withLabels(value)`](#fn-runs-onwithlabels)
  * [`fn withLabelsMixin(value)`](#fn-runs-onwithlabelsmixin)
  * [`fn withStringContainingExpressionSyntax(value)`](#fn-runs-onwithstringcontainingexpressionsyntax)
* [`obj strategy`](#obj-strategy)
  * [`fn withFailFast(value=true)`](#fn-strategywithfailfast)
  * [`fn withMatrix(value)`](#fn-strategywithmatrix)
  * [`fn withMatrixMixin(value)`](#fn-strategywithmatrixmixin)
  * [`fn withMaxParallel(value)`](#fn-strategywithmaxparallel)
  * [`obj matrix`](#obj-strategymatrix)
    * [`fn withExpressionSyntax(value)`](#fn-strategymatrixwithexpressionsyntax)
* [`obj timeout-minutes`](#obj-timeout-minutes)
  * [`fn withExpressionSyntax(value)`](#fn-timeout-minuteswithexpressionsyntax)

## Fields

### fn withConcurrency

```jsonnet
withConcurrency(value)
```

PARAMETERS:

* **value** (`object`,`string`)

Concurrency ensures that only a single job or workflow using the same concurrency group will run at a time. A concurrency group can be any string or expression. The expression can use any context except for the secrets context. 
You can also specify concurrency at the workflow level. 
When a concurrent job or workflow is queued, if another job or workflow using the same concurrency group in the repository is in progress, the queued job or workflow will be pending. Any previously pending job or workflow in the concurrency group will be canceled. To also cancel any currently running job or workflow in the same concurrency group, specify cancel-in-progress: true.
### fn withConcurrencyMixin

```jsonnet
withConcurrencyMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

Concurrency ensures that only a single job or workflow using the same concurrency group will run at a time. A concurrency group can be any string or expression. The expression can use any context except for the secrets context. 
You can also specify concurrency at the workflow level. 
When a concurrent job or workflow is queued, if another job or workflow using the same concurrency group in the repository is in progress, the queued job or workflow will be pending. Any previously pending job or workflow in the concurrency group will be canceled. To also cancel any currently running job or workflow in the same concurrency group, specify cancel-in-progress: true.
### fn withContainer

```jsonnet
withContainer(value)
```

PARAMETERS:

* **value** (`object`)

A container to run any steps in a job that don't already specify a container. If you have steps that use both script and container actions, the container actions will run as sibling containers on the same network with the same volume mounts.
If you do not set a container, all steps will run directly on the host specified by runs-on unless a step refers to an action configured to run in a container.
### fn withContainerMixin

```jsonnet
withContainerMixin(value)
```

PARAMETERS:

* **value** (`object`)

A container to run any steps in a job that don't already specify a container. If you have steps that use both script and container actions, the container actions will run as sibling containers on the same network with the same volume mounts.
If you do not set a container, all steps will run directly on the host specified by runs-on unless a step refers to an action configured to run in a container.
### fn withContinueOnError

```jsonnet
withContinueOnError(value)
```

PARAMETERS:

* **value** (`boolean`,`string`)

Prevents a workflow run from failing when a job fails. Set to true to allow a workflow run to pass when this job fails.
### fn withContinueOnErrorMixin

```jsonnet
withContinueOnErrorMixin(value)
```

PARAMETERS:

* **value** (`boolean`,`string`)

Prevents a workflow run from failing when a job fails. Set to true to allow a workflow run to pass when this job fails.
### fn withDefaults

```jsonnet
withDefaults(value)
```

PARAMETERS:

* **value** (`object`)

A map of default settings that will apply to all steps in the job.
### fn withDefaultsMixin

```jsonnet
withDefaultsMixin(value)
```

PARAMETERS:

* **value** (`object`)

A map of default settings that will apply to all steps in the job.
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
### fn withEnvironment

```jsonnet
withEnvironment(value)
```

PARAMETERS:

* **value** (`object`,`string`)

The environment that the job references.
### fn withEnvironmentMixin

```jsonnet
withEnvironmentMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

The environment that the job references.
### fn withIf

```jsonnet
withIf(value)
```

PARAMETERS:

* **value** (`boolean`,`number`,`string`)

You can use the if conditional to prevent a job from running unless a condition is met. You can use any supported context and expression to create a conditional.
Expressions in an if conditional do not require the ${{ }} syntax. For more information, see https://help.github.com/en/articles/contexts-and-expression-syntax-for-github-actions.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the job displayed on GitHub.
### fn withNeeds

```jsonnet
withNeeds(value)
```

PARAMETERS:

* **value** (`array`,`string`)

Identifies any jobs that must complete successfully before this job will run. It can be a string or array of strings. If a job fails, all jobs that need it are skipped unless the jobs use a conditional statement that causes the job to continue.
### fn withNeedsMixin

```jsonnet
withNeedsMixin(value)
```

PARAMETERS:

* **value** (`array`,`string`)

Identifies any jobs that must complete successfully before this job will run. It can be a string or array of strings. If a job fails, all jobs that need it are skipped unless the jobs use a conditional statement that causes the job to continue.
### fn withOutputs

```jsonnet
withOutputs(value)
```

PARAMETERS:

* **value** (`object`)

A map of outputs for a job. Job outputs are available to all downstream jobs that depend on this job.
### fn withOutputsMixin

```jsonnet
withOutputsMixin(value)
```

PARAMETERS:

* **value** (`object`)

A map of outputs for a job. Job outputs are available to all downstream jobs that depend on this job.
### fn withPermissions

```jsonnet
withPermissions(value)
```

PARAMETERS:

* **value** (`object`,`string`)

You can modify the default permissions granted to the GITHUB_TOKEN, adding or removing access as required, so that you only allow the minimum required access.
### fn withPermissionsMixin

```jsonnet
withPermissionsMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

You can modify the default permissions granted to the GITHUB_TOKEN, adding or removing access as required, so that you only allow the minimum required access.
### fn withRunsOn

```jsonnet
withRunsOn(value)
```

PARAMETERS:

* **value** (`array`,`object`,`string`)

The type of machine to run the job on. The machine can be either a GitHub-hosted runner, or a self-hosted runner.
### fn withRunsOnMixin

```jsonnet
withRunsOnMixin(value)
```

PARAMETERS:

* **value** (`array`,`object`,`string`)

The type of machine to run the job on. The machine can be either a GitHub-hosted runner, or a self-hosted runner.
### fn withServices

```jsonnet
withServices(value)
```

PARAMETERS:

* **value** (`object`)

Additional containers to host services for a job in a workflow. These are useful for creating databases or cache services like redis. The runner on the virtual machine will automatically create a network and manage the life cycle of the service containers.
When you use a service container for a job or your step uses container actions, you don't need to set port information to access the service. Docker automatically exposes all ports between containers on the same network.
When both the job and the action run in a container, you can directly reference the container by its hostname. The hostname is automatically mapped to the service name.
When a step does not use a container action, you must access the service using localhost and bind the ports.
### fn withServicesMixin

```jsonnet
withServicesMixin(value)
```

PARAMETERS:

* **value** (`object`)

Additional containers to host services for a job in a workflow. These are useful for creating databases or cache services like redis. The runner on the virtual machine will automatically create a network and manage the life cycle of the service containers.
When you use a service container for a job or your step uses container actions, you don't need to set port information to access the service. Docker automatically exposes all ports between containers on the same network.
When both the job and the action run in a container, you can directly reference the container by its hostname. The hostname is automatically mapped to the service name.
When a step does not use a container action, you must access the service using localhost and bind the ports.
### fn withSteps

```jsonnet
withSteps(value)
```

PARAMETERS:

* **value** (`array`)

A job contains a sequence of tasks called steps. Steps can run commands, run setup tasks, or run an action in your repository, a public repository, or an action published in a Docker registry. Not all steps run actions, but all actions run as a step. Each step runs in its own process in the virtual environment and has access to the workspace and filesystem. Because steps run in their own process, changes to environment variables are not preserved between steps. GitHub provides built-in steps to set up and complete a job.
Must contain either `uses` or `run`

### fn withStepsMixin

```jsonnet
withStepsMixin(value)
```

PARAMETERS:

* **value** (`array`)

A job contains a sequence of tasks called steps. Steps can run commands, run setup tasks, or run an action in your repository, a public repository, or an action published in a Docker registry. Not all steps run actions, but all actions run as a step. Each step runs in its own process in the virtual environment and has access to the workspace and filesystem. Because steps run in their own process, changes to environment variables are not preserved between steps. GitHub provides built-in steps to set up and complete a job.
Must contain either `uses` or `run`

### fn withStrategy

```jsonnet
withStrategy(value)
```

PARAMETERS:

* **value** (`object`)

A strategy creates a build matrix for your jobs. You can define different variations of an environment to run each job in.
### fn withStrategyMixin

```jsonnet
withStrategyMixin(value)
```

PARAMETERS:

* **value** (`object`)

A strategy creates a build matrix for your jobs. You can define different variations of an environment to run each job in.
### fn withTimeoutMinutes

```jsonnet
withTimeoutMinutes(value=360)
```

PARAMETERS:

* **value** (`number`,`string`)
   - default value: `360`

The maximum number of minutes to let a workflow run before GitHub automatically cancels it. Default: 360
### fn withTimeoutMinutesMixin

```jsonnet
withTimeoutMinutesMixin(value=360)
```

PARAMETERS:

* **value** (`number`,`string`)
   - default value: `360`

The maximum number of minutes to let a workflow run before GitHub automatically cancels it. Default: 360
### obj concurrency


#### fn concurrency.withCancelInProgress

```jsonnet
concurrency.withCancelInProgress(value)
```

PARAMETERS:

* **value** (`boolean`,`string`)

To cancel any currently running job or workflow in the same concurrency group, specify cancel-in-progress: true.
#### fn concurrency.withCancelInProgressMixin

```jsonnet
concurrency.withCancelInProgressMixin(value)
```

PARAMETERS:

* **value** (`boolean`,`string`)

To cancel any currently running job or workflow in the same concurrency group, specify cancel-in-progress: true.
#### fn concurrency.withGroup

```jsonnet
concurrency.withGroup(value)
```

PARAMETERS:

* **value** (`string`)

When a concurrent job or workflow is queued, if another job or workflow using the same concurrency group in the repository is in progress, the queued job or workflow will be pending. Any previously pending job or workflow in the concurrency group will be canceled.
#### obj concurrency.cancel-in-progress


##### fn concurrency.cancel-in-progress.withExpressionSyntax

```jsonnet
concurrency.cancel-in-progress.withExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


### obj container


#### fn container.withContainer

```jsonnet
container.withContainer(value)
```

PARAMETERS:

* **value** (`object`)


#### fn container.withContainerMixin

```jsonnet
container.withContainerMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### fn container.withCredentials

```jsonnet
container.withCredentials(value)
```

PARAMETERS:

* **value** (`object`)

If the image's container registry requires authentication to pull the image, you can use credentials to set a map of the username and password. The credentials are the same values that you would provide to the `docker login` command.
#### fn container.withCredentialsMixin

```jsonnet
container.withCredentialsMixin(value)
```

PARAMETERS:

* **value** (`object`)

If the image's container registry requires authentication to pull the image, you can use credentials to set a map of the username and password. The credentials are the same values that you would provide to the `docker login` command.
#### fn container.withEnv

```jsonnet
container.withEnv(value)
```

PARAMETERS:

* **value** (`object`,`string`)

To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv
#### fn container.withEnvMixin

```jsonnet
container.withEnvMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv
#### fn container.withImage

```jsonnet
container.withImage(value)
```

PARAMETERS:

* **value** (`string`)

The Docker image to use as the container to run the action. The value can be the Docker Hub image name or a registry name.
#### fn container.withOptions

```jsonnet
container.withOptions(value)
```

PARAMETERS:

* **value** (`string`)

Additional Docker container resource options. For a list of options, see https://docs.docker.com/engine/reference/commandline/create/#options.
#### fn container.withPorts

```jsonnet
container.withPorts(value)
```

PARAMETERS:

* **value** (`array`)

Sets an array of ports to expose on the container.
#### fn container.withPortsMixin

```jsonnet
container.withPortsMixin(value)
```

PARAMETERS:

* **value** (`array`)

Sets an array of ports to expose on the container.
#### fn container.withVolumes

```jsonnet
container.withVolumes(value)
```

PARAMETERS:

* **value** (`array`)

Sets an array of volumes for the container to use. You can use volumes to share data between services or other steps in a job. You can specify named Docker volumes, anonymous Docker volumes, or bind mounts on the host.
To specify a volume, you specify the source and destination path: <source>:<destinationPath>
The <source> is a volume name or an absolute path on the host machine, and <destinationPath> is an absolute path in the container.
#### fn container.withVolumesMixin

```jsonnet
container.withVolumesMixin(value)
```

PARAMETERS:

* **value** (`array`)

Sets an array of volumes for the container to use. You can use volumes to share data between services or other steps in a job. You can specify named Docker volumes, anonymous Docker volumes, or bind mounts on the host.
To specify a volume, you specify the source and destination path: <source>:<destinationPath>
The <source> is a volume name or an absolute path on the host machine, and <destinationPath> is an absolute path in the container.
#### obj container.container


##### fn container.container.withCredentials

```jsonnet
container.container.withCredentials(value)
```

PARAMETERS:

* **value** (`object`)

If the image's container registry requires authentication to pull the image, you can use credentials to set a map of the username and password. The credentials are the same values that you would provide to the `docker login` command.
##### fn container.container.withCredentialsMixin

```jsonnet
container.container.withCredentialsMixin(value)
```

PARAMETERS:

* **value** (`object`)

If the image's container registry requires authentication to pull the image, you can use credentials to set a map of the username and password. The credentials are the same values that you would provide to the `docker login` command.
##### fn container.container.withEnv

```jsonnet
container.container.withEnv(value)
```

PARAMETERS:

* **value** (`object`,`string`)

To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv
##### fn container.container.withEnvMixin

```jsonnet
container.container.withEnvMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

To set custom environment variables, you need to specify the variables in the workflow file. You can define environment variables for a step, job, or entire workflow using the jobs.<job_id>.steps[*].env, jobs.<job_id>.env, and env keywords. For more information, see https://docs.github.com/en/actions/learn-github-actions/workflow-syntax-for-github-actions#jobsjob_idstepsenv
##### fn container.container.withImage

```jsonnet
container.container.withImage(value)
```

PARAMETERS:

* **value** (`string`)

The Docker image to use as the container to run the action. The value can be the Docker Hub image name or a registry name.
##### fn container.container.withOptions

```jsonnet
container.container.withOptions(value)
```

PARAMETERS:

* **value** (`string`)

Additional Docker container resource options. For a list of options, see https://docs.docker.com/engine/reference/commandline/create/#options.
##### fn container.container.withPorts

```jsonnet
container.container.withPorts(value)
```

PARAMETERS:

* **value** (`array`)

Sets an array of ports to expose on the container.
##### fn container.container.withPortsMixin

```jsonnet
container.container.withPortsMixin(value)
```

PARAMETERS:

* **value** (`array`)

Sets an array of ports to expose on the container.
##### fn container.container.withVolumes

```jsonnet
container.container.withVolumes(value)
```

PARAMETERS:

* **value** (`array`)

Sets an array of volumes for the container to use. You can use volumes to share data between services or other steps in a job. You can specify named Docker volumes, anonymous Docker volumes, or bind mounts on the host.
To specify a volume, you specify the source and destination path: <source>:<destinationPath>
The <source> is a volume name or an absolute path on the host machine, and <destinationPath> is an absolute path in the container.
##### fn container.container.withVolumesMixin

```jsonnet
container.container.withVolumesMixin(value)
```

PARAMETERS:

* **value** (`array`)

Sets an array of volumes for the container to use. You can use volumes to share data between services or other steps in a job. You can specify named Docker volumes, anonymous Docker volumes, or bind mounts on the host.
To specify a volume, you specify the source and destination path: <source>:<destinationPath>
The <source> is a volume name or an absolute path on the host machine, and <destinationPath> is an absolute path in the container.
##### obj container.container.credentials


###### fn container.container.credentials.withPassword

```jsonnet
container.container.credentials.withPassword(value)
```

PARAMETERS:

* **value** (`string`)


###### fn container.container.credentials.withUsername

```jsonnet
container.container.credentials.withUsername(value)
```

PARAMETERS:

* **value** (`string`)


##### obj container.container.env


###### fn container.container.env.withStringContainingExpressionSyntax

```jsonnet
container.container.env.withStringContainingExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


#### obj container.credentials


##### fn container.credentials.withPassword

```jsonnet
container.credentials.withPassword(value)
```

PARAMETERS:

* **value** (`string`)


##### fn container.credentials.withUsername

```jsonnet
container.credentials.withUsername(value)
```

PARAMETERS:

* **value** (`string`)


#### obj container.env


##### fn container.env.withStringContainingExpressionSyntax

```jsonnet
container.env.withStringContainingExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


### obj continue-on-error


#### fn continue-on-error.withExpressionSyntax

```jsonnet
continue-on-error.withExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


### obj defaults


#### fn defaults.withRun

```jsonnet
defaults.withRun(value)
```

PARAMETERS:

* **value** (`object`)


#### fn defaults.withRunMixin

```jsonnet
defaults.withRunMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### obj defaults.run


##### fn defaults.run.withShell

```jsonnet
defaults.run.withShell(value)
```

PARAMETERS:

* **value** (`string`)

You can override the default shell settings in the runner's operating system using the shell keyword. You can use built-in shell keywords, or you can define a custom set of shell options.
##### fn defaults.run.withShellMixin

```jsonnet
defaults.run.withShellMixin(value)
```

PARAMETERS:

* **value** (`string`)

You can override the default shell settings in the runner's operating system using the shell keyword. You can use built-in shell keywords, or you can define a custom set of shell options.
##### fn defaults.run.withWorkingDirectory

```jsonnet
defaults.run.withWorkingDirectory(value)
```

PARAMETERS:

* **value** (`string`)

Using the working-directory keyword, you can specify the working directory of where to run the command.
### obj env


#### fn env.withStringContainingExpressionSyntax

```jsonnet
env.withStringContainingExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


### obj environment


#### fn environment.withEnvironment

```jsonnet
environment.withEnvironment(value)
```

PARAMETERS:

* **value** (`object`)

The environment that the job references
#### fn environment.withEnvironmentMixin

```jsonnet
environment.withEnvironmentMixin(value)
```

PARAMETERS:

* **value** (`object`)

The environment that the job references
#### obj environment.environment


##### fn environment.environment.withName

```jsonnet
environment.environment.withName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the environment configured in the repo.
##### fn environment.environment.withUrl

```jsonnet
environment.environment.withUrl(value)
```

PARAMETERS:

* **value** (`string`)

A deployment URL
### obj needs


#### fn needs.withName

```jsonnet
needs.withName(value)
```

PARAMETERS:

* **value** (`string`)


### obj permissions


#### fn permissions.withActions

```jsonnet
permissions.withActions(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withAttestations

```jsonnet
permissions.withAttestations(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withChecks

```jsonnet
permissions.withChecks(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withContents

```jsonnet
permissions.withContents(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withDeployments

```jsonnet
permissions.withDeployments(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withDiscussions

```jsonnet
permissions.withDiscussions(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withIdToken

```jsonnet
permissions.withIdToken(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withIssues

```jsonnet
permissions.withIssues(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withPackages

```jsonnet
permissions.withPackages(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withPages

```jsonnet
permissions.withPages(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withPullRequests

```jsonnet
permissions.withPullRequests(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withRepositoryProjects

```jsonnet
permissions.withRepositoryProjects(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withSecurityEvents

```jsonnet
permissions.withSecurityEvents(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


#### fn permissions.withStatuses

```jsonnet
permissions.withStatuses(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"read"`, `"write"`, `"none"`


### obj runs-on


#### fn runs-on.withExpressionSyntax

```jsonnet
runs-on.withExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


#### fn runs-on.withGroup

```jsonnet
runs-on.withGroup(value)
```

PARAMETERS:

* **value** (`string`)


#### fn runs-on.withLabels

```jsonnet
runs-on.withLabels(value)
```

PARAMETERS:

* **value** (`array`,`string`)


#### fn runs-on.withLabelsMixin

```jsonnet
runs-on.withLabelsMixin(value)
```

PARAMETERS:

* **value** (`array`,`string`)


#### fn runs-on.withStringContainingExpressionSyntax

```jsonnet
runs-on.withStringContainingExpressionSyntax(value)
```

PARAMETERS:

* **value** (`string`)


### obj strategy


#### fn strategy.withFailFast

```jsonnet
strategy.withFailFast(value=true)
```

PARAMETERS:

* **value** (`boolean`,`string`)
   - default value: `true`

When set to true, GitHub cancels all in-progress jobs if any matrix job fails. Default: true
#### fn strategy.withMatrix

```jsonnet
strategy.withMatrix(value)
```

PARAMETERS:

* **value** (`object`,`string`)

A build matrix is a set of different configurations of the virtual environment. For example you might run a job against more than one supported version of a language, operating system, or tool. Each configuration is a copy of the job that runs and reports a status.
You can specify a matrix by supplying an array for the configuration options. For example, if the GitHub virtual environment supports Node.js versions 6, 8, and 10 you could specify an array of those versions in the matrix.
When you define a matrix of operating systems, you must set the required runs-on keyword to the operating system of the current job, rather than hard-coding the operating system name. To access the operating system name, you can use the matrix.os context parameter to set runs-on. For more information, see https://help.github.com/en/articles/contexts-and-expression-syntax-for-github-actions.
#### fn strategy.withMatrixMixin

```jsonnet
strategy.withMatrixMixin(value)
```

PARAMETERS:

* **value** (`object`,`string`)

A build matrix is a set of different configurations of the virtual environment. For example you might run a job against more than one supported version of a language, operating system, or tool. Each configuration is a copy of the job that runs and reports a status.
You can specify a matrix by supplying an array for the configuration options. For example, if the GitHub virtual environment supports Node.js versions 6, 8, and 10 you could specify an array of those versions in the matrix.
When you define a matrix of operating systems, you must set the required runs-on keyword to the operating system of the current job, rather than hard-coding the operating system name. To access the operating system name, you can use the matrix.os context parameter to set runs-on. For more information, see https://help.github.com/en/articles/contexts-and-expression-syntax-for-github-actions.
#### fn strategy.withMaxParallel

```jsonnet
strategy.withMaxParallel(value)
```

PARAMETERS:

* **value** (`number`,`string`)

The maximum number of jobs that can run simultaneously when using a matrix job strategy. By default, GitHub will maximize the number of jobs run in parallel depending on the available runners on GitHub-hosted virtual machines.
#### obj strategy.matrix


##### fn strategy.matrix.withExpressionSyntax

```jsonnet
strategy.matrix.withExpressionSyntax(value)
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

