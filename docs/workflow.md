# workflow



## Index

* [`fn withConcurrency(value)`](#fn-withconcurrency)
* [`fn withConcurrencyMixin(value)`](#fn-withconcurrencymixin)
* [`fn withDefaults(value)`](#fn-withdefaults)
* [`fn withDefaultsMixin(value)`](#fn-withdefaultsmixin)
* [`fn withEnv(value)`](#fn-withenv)
* [`fn withEnvMixin(value)`](#fn-withenvmixin)
* [`fn withJobs(value)`](#fn-withjobs)
* [`fn withJobsMixin(value)`](#fn-withjobsmixin)
* [`fn withName(value)`](#fn-withname)
* [`fn withOn(value)`](#fn-withon)
* [`fn withOnMixin(value)`](#fn-withonmixin)
* [`fn withPermissions(value)`](#fn-withpermissions)
* [`fn withPermissionsMixin(value)`](#fn-withpermissionsmixin)
* [`fn withRunName(value)`](#fn-withrunname)
* [`obj concurrency`](#obj-concurrency)
  * [`fn withCancelInProgress(value)`](#fn-concurrencywithcancelinprogress)
  * [`fn withCancelInProgressMixin(value)`](#fn-concurrencywithcancelinprogressmixin)
  * [`fn withGroup(value)`](#fn-concurrencywithgroup)
  * [`obj cancel-in-progress`](#obj-concurrencycancel-in-progress)
    * [`fn withExpressionSyntax(value)`](#fn-concurrencycancel-in-progresswithexpressionsyntax)
* [`obj defaults`](#obj-defaults)
  * [`fn withRun(value)`](#fn-defaultswithrun)
  * [`fn withRunMixin(value)`](#fn-defaultswithrunmixin)
  * [`obj run`](#obj-defaultsrun)
    * [`fn withShell(value)`](#fn-defaultsrunwithshell)
    * [`fn withShellMixin(value)`](#fn-defaultsrunwithshellmixin)
    * [`fn withWorkingDirectory(value)`](#fn-defaultsrunwithworkingdirectory)
* [`obj env`](#obj-env)
  * [`fn withStringContainingExpressionSyntax(value)`](#fn-envwithstringcontainingexpressionsyntax)
* [`obj on`](#obj-on)
  * [`fn withBranchProtectionRule(value)`](#fn-onwithbranchprotectionrule)
  * [`fn withBranchProtectionRuleMixin(value)`](#fn-onwithbranchprotectionrulemixin)
  * [`fn withCheckRun(value)`](#fn-onwithcheckrun)
  * [`fn withCheckRunMixin(value)`](#fn-onwithcheckrunmixin)
  * [`fn withCheckSuite(value)`](#fn-onwithchecksuite)
  * [`fn withCheckSuiteMixin(value)`](#fn-onwithchecksuitemixin)
  * [`fn withCreate(value)`](#fn-onwithcreate)
  * [`fn withCreateMixin(value)`](#fn-onwithcreatemixin)
  * [`fn withDelete(value)`](#fn-onwithdelete)
  * [`fn withDeleteMixin(value)`](#fn-onwithdeletemixin)
  * [`fn withDeployment(value)`](#fn-onwithdeployment)
  * [`fn withDeploymentMixin(value)`](#fn-onwithdeploymentmixin)
  * [`fn withDeploymentStatus(value)`](#fn-onwithdeploymentstatus)
  * [`fn withDeploymentStatusMixin(value)`](#fn-onwithdeploymentstatusmixin)
  * [`fn withDiscussion(value)`](#fn-onwithdiscussion)
  * [`fn withDiscussionComment(value)`](#fn-onwithdiscussioncomment)
  * [`fn withDiscussionCommentMixin(value)`](#fn-onwithdiscussioncommentmixin)
  * [`fn withDiscussionMixin(value)`](#fn-onwithdiscussionmixin)
  * [`fn withEvent(value)`](#fn-onwithevent)
  * [`fn withFork(value)`](#fn-onwithfork)
  * [`fn withForkMixin(value)`](#fn-onwithforkmixin)
  * [`fn withGollum(value)`](#fn-onwithgollum)
  * [`fn withGollumMixin(value)`](#fn-onwithgollummixin)
  * [`fn withIssueComment(value)`](#fn-onwithissuecomment)
  * [`fn withIssueCommentMixin(value)`](#fn-onwithissuecommentmixin)
  * [`fn withIssues(value)`](#fn-onwithissues)
  * [`fn withIssuesMixin(value)`](#fn-onwithissuesmixin)
  * [`fn withLabel(value)`](#fn-onwithlabel)
  * [`fn withLabelMixin(value)`](#fn-onwithlabelmixin)
  * [`fn withMergeGroup(value)`](#fn-onwithmergegroup)
  * [`fn withMergeGroupMixin(value)`](#fn-onwithmergegroupmixin)
  * [`fn withMilestone(value)`](#fn-onwithmilestone)
  * [`fn withMilestoneMixin(value)`](#fn-onwithmilestonemixin)
  * [`fn withPageBuild(value)`](#fn-onwithpagebuild)
  * [`fn withPageBuildMixin(value)`](#fn-onwithpagebuildmixin)
  * [`fn withProject(value)`](#fn-onwithproject)
  * [`fn withProjectCard(value)`](#fn-onwithprojectcard)
  * [`fn withProjectCardMixin(value)`](#fn-onwithprojectcardmixin)
  * [`fn withProjectColumn(value)`](#fn-onwithprojectcolumn)
  * [`fn withProjectColumnMixin(value)`](#fn-onwithprojectcolumnmixin)
  * [`fn withProjectMixin(value)`](#fn-onwithprojectmixin)
  * [`fn withPublic(value)`](#fn-onwithpublic)
  * [`fn withPublicMixin(value)`](#fn-onwithpublicmixin)
  * [`fn withPullRequest(value)`](#fn-onwithpullrequest)
  * [`fn withPullRequestMixin(value)`](#fn-onwithpullrequestmixin)
  * [`fn withPullRequestReview(value)`](#fn-onwithpullrequestreview)
  * [`fn withPullRequestReviewComment(value)`](#fn-onwithpullrequestreviewcomment)
  * [`fn withPullRequestReviewCommentMixin(value)`](#fn-onwithpullrequestreviewcommentmixin)
  * [`fn withPullRequestReviewMixin(value)`](#fn-onwithpullrequestreviewmixin)
  * [`fn withPullRequestTarget(value)`](#fn-onwithpullrequesttarget)
  * [`fn withPullRequestTargetMixin(value)`](#fn-onwithpullrequesttargetmixin)
  * [`fn withPush(value)`](#fn-onwithpush)
  * [`fn withPushMixin(value)`](#fn-onwithpushmixin)
  * [`fn withRegistryPackage(value)`](#fn-onwithregistrypackage)
  * [`fn withRegistryPackageMixin(value)`](#fn-onwithregistrypackagemixin)
  * [`fn withRelease(value)`](#fn-onwithrelease)
  * [`fn withReleaseMixin(value)`](#fn-onwithreleasemixin)
  * [`fn withRepositoryDispatch(value)`](#fn-onwithrepositorydispatch)
  * [`fn withRepositoryDispatchMixin(value)`](#fn-onwithrepositorydispatchmixin)
  * [`fn withSchedule(value)`](#fn-onwithschedule)
  * [`fn withScheduleMixin(value)`](#fn-onwithschedulemixin)
  * [`fn withStatus(value)`](#fn-onwithstatus)
  * [`fn withStatusMixin(value)`](#fn-onwithstatusmixin)
  * [`fn withWatch(value)`](#fn-onwithwatch)
  * [`fn withWatchMixin(value)`](#fn-onwithwatchmixin)
  * [`fn withWorkflowCall(value)`](#fn-onwithworkflowcall)
  * [`fn withWorkflowDispatch(value)`](#fn-onwithworkflowdispatch)
  * [`fn withWorkflowRun(value)`](#fn-onwithworkflowrun)
  * [`fn withWorkflowRunMixin(value)`](#fn-onwithworkflowrunmixin)
  * [`obj branch_protection_rule`](#obj-onbranch_protection_rule)
    * [`fn withTypes(value=["created","edited","deleted"])`](#fn-onbranch_protection_rulewithtypes)
    * [`fn withTypesMixin(value=["created","edited","deleted"])`](#fn-onbranch_protection_rulewithtypesmixin)
  * [`obj check_run`](#obj-oncheck_run)
    * [`fn withTypes(value=["created","rerequested","completed","requested_action"])`](#fn-oncheck_runwithtypes)
    * [`fn withTypesMixin(value=["created","rerequested","completed","requested_action"])`](#fn-oncheck_runwithtypesmixin)
  * [`obj check_suite`](#obj-oncheck_suite)
    * [`fn withTypes(value=["completed","requested","rerequested"])`](#fn-oncheck_suitewithtypes)
    * [`fn withTypesMixin(value=["completed","requested","rerequested"])`](#fn-oncheck_suitewithtypesmixin)
  * [`obj discussion`](#obj-ondiscussion)
    * [`fn withTypes(value=["created","edited","deleted","transferred","pinned","unpinned","labeled","unlabeled","locked","unlocked","category_changed","answered","unanswered"])`](#fn-ondiscussionwithtypes)
    * [`fn withTypesMixin(value=["created","edited","deleted","transferred","pinned","unpinned","labeled","unlabeled","locked","unlocked","category_changed","answered","unanswered"])`](#fn-ondiscussionwithtypesmixin)
  * [`obj discussion_comment`](#obj-ondiscussion_comment)
    * [`fn withTypes(value=["created","edited","deleted"])`](#fn-ondiscussion_commentwithtypes)
    * [`fn withTypesMixin(value=["created","edited","deleted"])`](#fn-ondiscussion_commentwithtypesmixin)
  * [`obj issue_comment`](#obj-onissue_comment)
    * [`fn withTypes(value=["created","edited","deleted"])`](#fn-onissue_commentwithtypes)
    * [`fn withTypesMixin(value=["created","edited","deleted"])`](#fn-onissue_commentwithtypesmixin)
  * [`obj issues`](#obj-onissues)
    * [`fn withTypes(value=["opened","edited","deleted","transferred","pinned","unpinned","closed","reopened","assigned","unassigned","labeled","unlabeled","locked","unlocked","milestoned","demilestoned"])`](#fn-onissueswithtypes)
    * [`fn withTypesMixin(value=["opened","edited","deleted","transferred","pinned","unpinned","closed","reopened","assigned","unassigned","labeled","unlabeled","locked","unlocked","milestoned","demilestoned"])`](#fn-onissueswithtypesmixin)
  * [`obj label`](#obj-onlabel)
    * [`fn withTypes(value=["created","edited","deleted"])`](#fn-onlabelwithtypes)
    * [`fn withTypesMixin(value=["created","edited","deleted"])`](#fn-onlabelwithtypesmixin)
  * [`obj merge_group`](#obj-onmerge_group)
    * [`fn withTypes(value=["checks_requested"])`](#fn-onmerge_groupwithtypes)
    * [`fn withTypesMixin(value=["checks_requested"])`](#fn-onmerge_groupwithtypesmixin)
  * [`obj milestone`](#obj-onmilestone)
    * [`fn withTypes(value=["created","closed","opened","edited","deleted"])`](#fn-onmilestonewithtypes)
    * [`fn withTypesMixin(value=["created","closed","opened","edited","deleted"])`](#fn-onmilestonewithtypesmixin)
  * [`obj project`](#obj-onproject)
    * [`fn withTypes(value=["created","updated","closed","reopened","edited","deleted"])`](#fn-onprojectwithtypes)
    * [`fn withTypesMixin(value=["created","updated","closed","reopened","edited","deleted"])`](#fn-onprojectwithtypesmixin)
  * [`obj project_card`](#obj-onproject_card)
    * [`fn withTypes(value=["created","moved","converted","edited","deleted"])`](#fn-onproject_cardwithtypes)
    * [`fn withTypesMixin(value=["created","moved","converted","edited","deleted"])`](#fn-onproject_cardwithtypesmixin)
  * [`obj project_column`](#obj-onproject_column)
    * [`fn withTypes(value=["created","updated","moved","deleted"])`](#fn-onproject_columnwithtypes)
    * [`fn withTypesMixin(value=["created","updated","moved","deleted"])`](#fn-onproject_columnwithtypesmixin)
  * [`obj pull_request`](#obj-onpull_request)
    * [`fn withBranches(value)`](#fn-onpull_requestwithbranches)
    * [`fn withBranchesIgnore(value)`](#fn-onpull_requestwithbranchesignore)
    * [`fn withBranchesIgnoreMixin(value)`](#fn-onpull_requestwithbranchesignoremixin)
    * [`fn withBranchesMixin(value)`](#fn-onpull_requestwithbranchesmixin)
    * [`fn withPaths(value)`](#fn-onpull_requestwithpaths)
    * [`fn withPathsIgnore(value)`](#fn-onpull_requestwithpathsignore)
    * [`fn withPathsIgnoreMixin(value)`](#fn-onpull_requestwithpathsignoremixin)
    * [`fn withPathsMixin(value)`](#fn-onpull_requestwithpathsmixin)
    * [`fn withTags(value)`](#fn-onpull_requestwithtags)
    * [`fn withTagsIgnore(value)`](#fn-onpull_requestwithtagsignore)
    * [`fn withTagsIgnoreMixin(value)`](#fn-onpull_requestwithtagsignoremixin)
    * [`fn withTagsMixin(value)`](#fn-onpull_requestwithtagsmixin)
    * [`fn withTypes(value=["opened","synchronize","reopened"])`](#fn-onpull_requestwithtypes)
    * [`fn withTypesMixin(value=["opened","synchronize","reopened"])`](#fn-onpull_requestwithtypesmixin)
  * [`obj pull_request_review`](#obj-onpull_request_review)
    * [`fn withTypes(value=["submitted","edited","dismissed"])`](#fn-onpull_request_reviewwithtypes)
    * [`fn withTypesMixin(value=["submitted","edited","dismissed"])`](#fn-onpull_request_reviewwithtypesmixin)
  * [`obj pull_request_review_comment`](#obj-onpull_request_review_comment)
    * [`fn withTypes(value=["created","edited","deleted"])`](#fn-onpull_request_review_commentwithtypes)
    * [`fn withTypesMixin(value=["created","edited","deleted"])`](#fn-onpull_request_review_commentwithtypesmixin)
  * [`obj pull_request_target`](#obj-onpull_request_target)
    * [`fn withBranches(value)`](#fn-onpull_request_targetwithbranches)
    * [`fn withBranchesIgnore(value)`](#fn-onpull_request_targetwithbranchesignore)
    * [`fn withBranchesIgnoreMixin(value)`](#fn-onpull_request_targetwithbranchesignoremixin)
    * [`fn withBranchesMixin(value)`](#fn-onpull_request_targetwithbranchesmixin)
    * [`fn withPaths(value)`](#fn-onpull_request_targetwithpaths)
    * [`fn withPathsIgnore(value)`](#fn-onpull_request_targetwithpathsignore)
    * [`fn withPathsIgnoreMixin(value)`](#fn-onpull_request_targetwithpathsignoremixin)
    * [`fn withPathsMixin(value)`](#fn-onpull_request_targetwithpathsmixin)
    * [`fn withTags(value)`](#fn-onpull_request_targetwithtags)
    * [`fn withTagsIgnore(value)`](#fn-onpull_request_targetwithtagsignore)
    * [`fn withTagsIgnoreMixin(value)`](#fn-onpull_request_targetwithtagsignoremixin)
    * [`fn withTagsMixin(value)`](#fn-onpull_request_targetwithtagsmixin)
    * [`fn withTypes(value=["opened","synchronize","reopened"])`](#fn-onpull_request_targetwithtypes)
    * [`fn withTypesMixin(value=["opened","synchronize","reopened"])`](#fn-onpull_request_targetwithtypesmixin)
  * [`obj push`](#obj-onpush)
    * [`fn withBranches(value)`](#fn-onpushwithbranches)
    * [`fn withBranchesIgnore(value)`](#fn-onpushwithbranchesignore)
    * [`fn withBranchesIgnoreMixin(value)`](#fn-onpushwithbranchesignoremixin)
    * [`fn withBranchesMixin(value)`](#fn-onpushwithbranchesmixin)
    * [`fn withPaths(value)`](#fn-onpushwithpaths)
    * [`fn withPathsIgnore(value)`](#fn-onpushwithpathsignore)
    * [`fn withPathsIgnoreMixin(value)`](#fn-onpushwithpathsignoremixin)
    * [`fn withPathsMixin(value)`](#fn-onpushwithpathsmixin)
    * [`fn withTags(value)`](#fn-onpushwithtags)
    * [`fn withTagsIgnore(value)`](#fn-onpushwithtagsignore)
    * [`fn withTagsIgnoreMixin(value)`](#fn-onpushwithtagsignoremixin)
    * [`fn withTagsMixin(value)`](#fn-onpushwithtagsmixin)
  * [`obj registry_package`](#obj-onregistry_package)
    * [`fn withTypes(value=["published","updated"])`](#fn-onregistry_packagewithtypes)
    * [`fn withTypesMixin(value=["published","updated"])`](#fn-onregistry_packagewithtypesmixin)
  * [`obj release`](#obj-onrelease)
    * [`fn withTypes(value=["published","unpublished","created","edited","deleted","prereleased","released"])`](#fn-onreleasewithtypes)
    * [`fn withTypesMixin(value=["published","unpublished","created","edited","deleted","prereleased","released"])`](#fn-onreleasewithtypesmixin)
  * [`obj workflow_run`](#obj-onworkflow_run)
    * [`fn withTypes(value=["requested","completed"])`](#fn-onworkflow_runwithtypes)
    * [`fn withTypesMixin(value=["requested","completed"])`](#fn-onworkflow_runwithtypesmixin)
    * [`fn withWorkflows(value)`](#fn-onworkflow_runwithworkflows)
    * [`fn withWorkflowsMixin(value)`](#fn-onworkflow_runwithworkflowsmixin)
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
### fn withDefaults

```jsonnet
withDefaults(value)
```

PARAMETERS:

* **value** (`object`)

A map of default settings that will apply to all jobs in the workflow.
### fn withDefaultsMixin

```jsonnet
withDefaultsMixin(value)
```

PARAMETERS:

* **value** (`object`)

A map of default settings that will apply to all jobs in the workflow.
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
### fn withJobs

```jsonnet
withJobs(value)
```

PARAMETERS:

* **value** (`object`)

A workflow run is made up of one or more jobs. Jobs run in parallel by default. To run jobs sequentially, you can define dependencies on other jobs using the jobs.<job_id>.needs keyword.
Each job runs in a fresh instance of the virtual environment specified by runs-on.
You can run an unlimited number of jobs as long as you are within the workflow usage limits. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#usage-limits.
### fn withJobsMixin

```jsonnet
withJobsMixin(value)
```

PARAMETERS:

* **value** (`object`)

A workflow run is made up of one or more jobs. Jobs run in parallel by default. To run jobs sequentially, you can define dependencies on other jobs using the jobs.<job_id>.needs keyword.
Each job runs in a fresh instance of the virtual environment specified by runs-on.
You can run an unlimited number of jobs as long as you are within the workflow usage limits. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#usage-limits.
### fn withName

```jsonnet
withName(value)
```

PARAMETERS:

* **value** (`string`)

The name of your workflow. GitHub displays the names of your workflows on your repository's actions page. If you omit this field, GitHub sets the name to the workflow's filename.
### fn withOn

```jsonnet
withOn(value)
```

PARAMETERS:

* **value** (`array`,`object`,`string`)

The name of the GitHub event that triggers the workflow. You can provide a single event string, array of events, array of event types, or an event configuration map that schedules a workflow or restricts the execution of a workflow to specific files, tags, or branch changes. For a list of available events, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/events-that-trigger-workflows.
### fn withOnMixin

```jsonnet
withOnMixin(value)
```

PARAMETERS:

* **value** (`array`,`object`,`string`)

The name of the GitHub event that triggers the workflow. You can provide a single event string, array of events, array of event types, or an event configuration map that schedules a workflow or restricts the execution of a workflow to specific files, tags, or branch changes. For a list of available events, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/events-that-trigger-workflows.
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
### fn withRunName

```jsonnet
withRunName(value)
```

PARAMETERS:

* **value** (`string`)

The name for workflow runs generated from the workflow. GitHub displays the workflow run name in the list of workflow runs on your repository's 'Actions' tab.
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


### obj on


#### fn on.withBranchProtectionRule

```jsonnet
on.withBranchProtectionRule(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the branch_protection_rule event occurs. More than one activity type triggers this event.
#### fn on.withBranchProtectionRuleMixin

```jsonnet
on.withBranchProtectionRuleMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the branch_protection_rule event occurs. More than one activity type triggers this event.
#### fn on.withCheckRun

```jsonnet
on.withCheckRun(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the check_run event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/checks/runs.
#### fn on.withCheckRunMixin

```jsonnet
on.withCheckRunMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the check_run event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/checks/runs.
#### fn on.withCheckSuite

```jsonnet
on.withCheckSuite(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the check_suite event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/checks/suites/.
#### fn on.withCheckSuiteMixin

```jsonnet
on.withCheckSuiteMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the check_suite event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/checks/suites/.
#### fn on.withCreate

```jsonnet
on.withCreate(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone creates a branch or tag, which triggers the create event. For information about the REST API, see https://developer.github.com/v3/git/refs/#create-a-reference.
#### fn on.withCreateMixin

```jsonnet
on.withCreateMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone creates a branch or tag, which triggers the create event. For information about the REST API, see https://developer.github.com/v3/git/refs/#create-a-reference.
#### fn on.withDelete

```jsonnet
on.withDelete(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone deletes a branch or tag, which triggers the delete event. For information about the REST API, see https://developer.github.com/v3/git/refs/#delete-a-reference.
#### fn on.withDeleteMixin

```jsonnet
on.withDeleteMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone deletes a branch or tag, which triggers the delete event. For information about the REST API, see https://developer.github.com/v3/git/refs/#delete-a-reference.
#### fn on.withDeployment

```jsonnet
on.withDeployment(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone creates a deployment, which triggers the deployment event. Deployments created with a commit SHA may not have a Git ref. For information about the REST API, see https://developer.github.com/v3/repos/deployments/.
#### fn on.withDeploymentMixin

```jsonnet
on.withDeploymentMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone creates a deployment, which triggers the deployment event. Deployments created with a commit SHA may not have a Git ref. For information about the REST API, see https://developer.github.com/v3/repos/deployments/.
#### fn on.withDeploymentStatus

```jsonnet
on.withDeploymentStatus(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime a third party provides a deployment status, which triggers the deployment_status event. Deployments created with a commit SHA may not have a Git ref. For information about the REST API, see https://developer.github.com/v3/repos/deployments/#create-a-deployment-status.
#### fn on.withDeploymentStatusMixin

```jsonnet
on.withDeploymentStatusMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime a third party provides a deployment status, which triggers the deployment_status event. Deployments created with a commit SHA may not have a Git ref. For information about the REST API, see https://developer.github.com/v3/repos/deployments/#create-a-deployment-status.
#### fn on.withDiscussion

```jsonnet
on.withDiscussion(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the discussion event occurs. More than one activity type triggers this event. For information about the GraphQL API, see https://docs.github.com/en/graphql/guides/using-the-graphql-api-for-discussions
#### fn on.withDiscussionComment

```jsonnet
on.withDiscussionComment(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the discussion_comment event occurs. More than one activity type triggers this event. For information about the GraphQL API, see https://docs.github.com/en/graphql/guides/using-the-graphql-api-for-discussions
#### fn on.withDiscussionCommentMixin

```jsonnet
on.withDiscussionCommentMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the discussion_comment event occurs. More than one activity type triggers this event. For information about the GraphQL API, see https://docs.github.com/en/graphql/guides/using-the-graphql-api-for-discussions
#### fn on.withDiscussionMixin

```jsonnet
on.withDiscussionMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the discussion event occurs. More than one activity type triggers this event. For information about the GraphQL API, see https://docs.github.com/en/graphql/guides/using-the-graphql-api-for-discussions
#### fn on.withEvent

```jsonnet
on.withEvent(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"branch_protection_rule"`, `"check_run"`, `"check_suite"`, `"create"`, `"delete"`, `"deployment"`, `"deployment_status"`, `"discussion"`, `"discussion_comment"`, `"fork"`, `"gollum"`, `"issue_comment"`, `"issues"`, `"label"`, `"merge_group"`, `"milestone"`, `"page_build"`, `"project"`, `"project_card"`, `"project_column"`, `"public"`, `"pull_request"`, `"pull_request_review"`, `"pull_request_review_comment"`, `"pull_request_target"`, `"push"`, `"registry_package"`, `"release"`, `"status"`, `"watch"`, `"workflow_call"`, `"workflow_dispatch"`, `"workflow_run"`, `"repository_dispatch"`


#### fn on.withFork

```jsonnet
on.withFork(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime when someone forks a repository, which triggers the fork event. For information about the REST API, see https://developer.github.com/v3/repos/forks/#create-a-fork.
#### fn on.withForkMixin

```jsonnet
on.withForkMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime when someone forks a repository, which triggers the fork event. For information about the REST API, see https://developer.github.com/v3/repos/forks/#create-a-fork.
#### fn on.withGollum

```jsonnet
on.withGollum(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow when someone creates or updates a Wiki page, which triggers the gollum event.
#### fn on.withGollumMixin

```jsonnet
on.withGollumMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow when someone creates or updates a Wiki page, which triggers the gollum event.
#### fn on.withIssueComment

```jsonnet
on.withIssueComment(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the issue_comment event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/issues/comments/.
#### fn on.withIssueCommentMixin

```jsonnet
on.withIssueCommentMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the issue_comment event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/issues/comments/.
#### fn on.withIssues

```jsonnet
on.withIssues(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the issues event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/issues.
#### fn on.withIssuesMixin

```jsonnet
on.withIssuesMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the issues event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/issues.
#### fn on.withLabel

```jsonnet
on.withLabel(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the label event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/issues/labels/.
#### fn on.withLabelMixin

```jsonnet
on.withLabelMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the label event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/issues/labels/.
#### fn on.withMergeGroup

```jsonnet
on.withMergeGroup(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow when a pull request is added to a merge queue, which adds the pull request to a merge group. For information about the merge queue, see https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/merging-a-pull-request-with-a-merge-queue .
#### fn on.withMergeGroupMixin

```jsonnet
on.withMergeGroupMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow when a pull request is added to a merge queue, which adds the pull request to a merge group. For information about the merge queue, see https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/incorporating-changes-from-a-pull-request/merging-a-pull-request-with-a-merge-queue .
#### fn on.withMilestone

```jsonnet
on.withMilestone(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the milestone event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/issues/milestones/.
#### fn on.withMilestoneMixin

```jsonnet
on.withMilestoneMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the milestone event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/issues/milestones/.
#### fn on.withPageBuild

```jsonnet
on.withPageBuild(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone pushes to a GitHub Pages-enabled branch, which triggers the page_build event. For information about the REST API, see https://developer.github.com/v3/repos/pages/.
#### fn on.withPageBuildMixin

```jsonnet
on.withPageBuildMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone pushes to a GitHub Pages-enabled branch, which triggers the page_build event. For information about the REST API, see https://developer.github.com/v3/repos/pages/.
#### fn on.withProject

```jsonnet
on.withProject(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the project event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/projects/.
#### fn on.withProjectCard

```jsonnet
on.withProjectCard(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the project_card event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/projects/cards.
#### fn on.withProjectCardMixin

```jsonnet
on.withProjectCardMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the project_card event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/projects/cards.
#### fn on.withProjectColumn

```jsonnet
on.withProjectColumn(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the project_column event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/projects/columns.
#### fn on.withProjectColumnMixin

```jsonnet
on.withProjectColumnMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the project_column event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/projects/columns.
#### fn on.withProjectMixin

```jsonnet
on.withProjectMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the project event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/projects/.
#### fn on.withPublic

```jsonnet
on.withPublic(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone makes a private repository public, which triggers the public event. For information about the REST API, see https://developer.github.com/v3/repos/#edit.
#### fn on.withPublicMixin

```jsonnet
on.withPublicMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime someone makes a private repository public, which triggers the public event. For information about the REST API, see https://developer.github.com/v3/repos/#edit.
#### fn on.withPullRequest

```jsonnet
on.withPullRequest(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the pull_request event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/pulls.
Note: Workflows do not run on private base repositories when you open a pull request from a forked repository.
When you create a pull request from a forked repository to the base repository, GitHub sends the pull_request event to the base repository and no pull request events occur on the forked repository.
Workflows don't run on forked repositories by default. You must enable GitHub Actions in the Actions tab of the forked repository.
The permissions for the GITHUB_TOKEN in forked repositories is read-only. For more information about the GITHUB_TOKEN, see https://help.github.com/en/articles/virtual-environments-for-github-actions.
#### fn on.withPullRequestMixin

```jsonnet
on.withPullRequestMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the pull_request event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/pulls.
Note: Workflows do not run on private base repositories when you open a pull request from a forked repository.
When you create a pull request from a forked repository to the base repository, GitHub sends the pull_request event to the base repository and no pull request events occur on the forked repository.
Workflows don't run on forked repositories by default. You must enable GitHub Actions in the Actions tab of the forked repository.
The permissions for the GITHUB_TOKEN in forked repositories is read-only. For more information about the GITHUB_TOKEN, see https://help.github.com/en/articles/virtual-environments-for-github-actions.
#### fn on.withPullRequestReview

```jsonnet
on.withPullRequestReview(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the pull_request_review event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/pulls/reviews.
Note: Workflows do not run on private base repositories when you open a pull request from a forked repository.
When you create a pull request from a forked repository to the base repository, GitHub sends the pull_request event to the base repository and no pull request events occur on the forked repository.
Workflows don't run on forked repositories by default. You must enable GitHub Actions in the Actions tab of the forked repository.
The permissions for the GITHUB_TOKEN in forked repositories is read-only. For more information about the GITHUB_TOKEN, see https://help.github.com/en/articles/virtual-environments-for-github-actions.
#### fn on.withPullRequestReviewComment

```jsonnet
on.withPullRequestReviewComment(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime a comment on a pull request's unified diff is modified, which triggers the pull_request_review_comment event. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/pulls/comments.
Note: Workflows do not run on private base repositories when you open a pull request from a forked repository.
When you create a pull request from a forked repository to the base repository, GitHub sends the pull_request event to the base repository and no pull request events occur on the forked repository.
Workflows don't run on forked repositories by default. You must enable GitHub Actions in the Actions tab of the forked repository.
The permissions for the GITHUB_TOKEN in forked repositories is read-only. For more information about the GITHUB_TOKEN, see https://help.github.com/en/articles/virtual-environments-for-github-actions.
#### fn on.withPullRequestReviewCommentMixin

```jsonnet
on.withPullRequestReviewCommentMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime a comment on a pull request's unified diff is modified, which triggers the pull_request_review_comment event. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/pulls/comments.
Note: Workflows do not run on private base repositories when you open a pull request from a forked repository.
When you create a pull request from a forked repository to the base repository, GitHub sends the pull_request event to the base repository and no pull request events occur on the forked repository.
Workflows don't run on forked repositories by default. You must enable GitHub Actions in the Actions tab of the forked repository.
The permissions for the GITHUB_TOKEN in forked repositories is read-only. For more information about the GITHUB_TOKEN, see https://help.github.com/en/articles/virtual-environments-for-github-actions.
#### fn on.withPullRequestReviewMixin

```jsonnet
on.withPullRequestReviewMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the pull_request_review event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/pulls/reviews.
Note: Workflows do not run on private base repositories when you open a pull request from a forked repository.
When you create a pull request from a forked repository to the base repository, GitHub sends the pull_request event to the base repository and no pull request events occur on the forked repository.
Workflows don't run on forked repositories by default. You must enable GitHub Actions in the Actions tab of the forked repository.
The permissions for the GITHUB_TOKEN in forked repositories is read-only. For more information about the GITHUB_TOKEN, see https://help.github.com/en/articles/virtual-environments-for-github-actions.
#### fn on.withPullRequestTarget

```jsonnet
on.withPullRequestTarget(value)
```

PARAMETERS:

* **value** (`object`)

This event is similar to pull_request, except that it runs in the context of the base repository of the pull request, rather than in the merge commit. This means that you can more safely make your secrets available to the workflows triggered by the pull request, because only workflows defined in the commit on the base repository are run. For example, this event allows you to create workflows that label and comment on pull requests, based on the contents of the event payload.
#### fn on.withPullRequestTargetMixin

```jsonnet
on.withPullRequestTargetMixin(value)
```

PARAMETERS:

* **value** (`object`)

This event is similar to pull_request, except that it runs in the context of the base repository of the pull request, rather than in the merge commit. This means that you can more safely make your secrets available to the workflows triggered by the pull request, because only workflows defined in the commit on the base repository are run. For example, this event allows you to create workflows that label and comment on pull requests, based on the contents of the event payload.
#### fn on.withPush

```jsonnet
on.withPush(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow when someone pushes to a repository branch, which triggers the push event.
Note: The webhook payload available to GitHub Actions does not include the added, removed, and modified attributes in the commit object. You can retrieve the full commit object using the REST API. For more information, see https://developer.github.com/v3/repos/commits/#get-a-single-commit.
#### fn on.withPushMixin

```jsonnet
on.withPushMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow when someone pushes to a repository branch, which triggers the push event.
Note: The webhook payload available to GitHub Actions does not include the added, removed, and modified attributes in the commit object. You can retrieve the full commit object using the REST API. For more information, see https://developer.github.com/v3/repos/commits/#get-a-single-commit.
#### fn on.withRegistryPackage

```jsonnet
on.withRegistryPackage(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime a package is published or updated. For more information, see https://help.github.com/en/github/managing-packages-with-github-packages.
#### fn on.withRegistryPackageMixin

```jsonnet
on.withRegistryPackageMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime a package is published or updated. For more information, see https://help.github.com/en/github/managing-packages-with-github-packages.
#### fn on.withRelease

```jsonnet
on.withRelease(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the release event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/repos/releases/ in the GitHub Developer documentation.
#### fn on.withReleaseMixin

```jsonnet
on.withReleaseMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the release event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/repos/releases/ in the GitHub Developer documentation.
#### fn on.withRepositoryDispatch

```jsonnet
on.withRepositoryDispatch(value)
```

PARAMETERS:

* **value** (`object`)

You can use the GitHub API to trigger a webhook event called repository_dispatch when you want to trigger a workflow for activity that happens outside of GitHub. For more information, see https://developer.github.com/v3/repos/#create-a-repository-dispatch-event.
To trigger the custom repository_dispatch webhook event, you must send a POST request to a GitHub API endpoint and provide an event_type name to describe the activity type. To trigger a workflow run, you must also configure your workflow to use the repository_dispatch event.
#### fn on.withRepositoryDispatchMixin

```jsonnet
on.withRepositoryDispatchMixin(value)
```

PARAMETERS:

* **value** (`object`)

You can use the GitHub API to trigger a webhook event called repository_dispatch when you want to trigger a workflow for activity that happens outside of GitHub. For more information, see https://developer.github.com/v3/repos/#create-a-repository-dispatch-event.
To trigger the custom repository_dispatch webhook event, you must send a POST request to a GitHub API endpoint and provide an event_type name to describe the activity type. To trigger a workflow run, you must also configure your workflow to use the repository_dispatch event.
#### fn on.withSchedule

```jsonnet
on.withSchedule(value)
```

PARAMETERS:

* **value** (`array`)

You can schedule a workflow to run at specific UTC times using POSIX cron syntax (https://pubs.opengroup.org/onlinepubs/9699919799/utilities/crontab.html#tag_20_25_07). Scheduled workflows run on the latest commit on the default or base branch. The shortest interval you can run scheduled workflows is once every 5 minutes.
Note: GitHub Actions does not support the non-standard syntax @yearly, @monthly, @weekly, @daily, @hourly, and @reboot.
You can use crontab guru (https://crontab.guru/). to help generate your cron syntax and confirm what time it will run. To help you get started, there is also a list of crontab guru examples (https://crontab.guru/examples.html).
#### fn on.withScheduleMixin

```jsonnet
on.withScheduleMixin(value)
```

PARAMETERS:

* **value** (`array`)

You can schedule a workflow to run at specific UTC times using POSIX cron syntax (https://pubs.opengroup.org/onlinepubs/9699919799/utilities/crontab.html#tag_20_25_07). Scheduled workflows run on the latest commit on the default or base branch. The shortest interval you can run scheduled workflows is once every 5 minutes.
Note: GitHub Actions does not support the non-standard syntax @yearly, @monthly, @weekly, @daily, @hourly, and @reboot.
You can use crontab guru (https://crontab.guru/). to help generate your cron syntax and confirm what time it will run. To help you get started, there is also a list of crontab guru examples (https://crontab.guru/examples.html).
#### fn on.withStatus

```jsonnet
on.withStatus(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the status of a Git commit changes, which triggers the status event. For information about the REST API, see https://developer.github.com/v3/repos/statuses/.
#### fn on.withStatusMixin

```jsonnet
on.withStatusMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the status of a Git commit changes, which triggers the status event. For information about the REST API, see https://developer.github.com/v3/repos/statuses/.
#### fn on.withWatch

```jsonnet
on.withWatch(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the watch event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/activity/starring/.
#### fn on.withWatchMixin

```jsonnet
on.withWatchMixin(value)
```

PARAMETERS:

* **value** (`object`)

Runs your workflow anytime the watch event occurs. More than one activity type triggers this event. For information about the REST API, see https://developer.github.com/v3/activity/starring/.
#### fn on.withWorkflowCall

```jsonnet
on.withWorkflowCall(value)
```

PARAMETERS:

* **value** (`string`)

Allows workflows to be reused by other workflows.
#### fn on.withWorkflowDispatch

```jsonnet
on.withWorkflowDispatch(value)
```

PARAMETERS:

* **value** (`string`)

You can now create workflows that are manually triggered with the new workflow_dispatch event. You will then see a 'Run workflow' button on the Actions tab, enabling you to easily trigger a run.
#### fn on.withWorkflowRun

```jsonnet
on.withWorkflowRun(value)
```

PARAMETERS:

* **value** (`object`)

This event occurs when a workflow run is requested or completed, and allows you to execute a workflow based on the finished result of another workflow. For example, if your pull_request workflow generates build artifacts, you can create a new workflow that uses workflow_run to analyze the results and add a comment to the original pull request.
#### fn on.withWorkflowRunMixin

```jsonnet
on.withWorkflowRunMixin(value)
```

PARAMETERS:

* **value** (`object`)

This event occurs when a workflow run is requested or completed, and allows you to execute a workflow based on the finished result of another workflow. For example, if your pull_request workflow generates build artifacts, you can create a new workflow that uses workflow_run to analyze the results and add a comment to the original pull request.
#### obj on.branch_protection_rule


##### fn on.branch_protection_rule.withTypes

```jsonnet
on.branch_protection_rule.withTypes(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.branch_protection_rule.withTypesMixin

```jsonnet
on.branch_protection_rule.withTypesMixin(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.check_run


##### fn on.check_run.withTypes

```jsonnet
on.check_run.withTypes(value=["created","rerequested","completed","requested_action"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","rerequested","completed","requested_action"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.check_run.withTypesMixin

```jsonnet
on.check_run.withTypesMixin(value=["created","rerequested","completed","requested_action"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","rerequested","completed","requested_action"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.check_suite


##### fn on.check_suite.withTypes

```jsonnet
on.check_suite.withTypes(value=["completed","requested","rerequested"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["completed","requested","rerequested"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.check_suite.withTypesMixin

```jsonnet
on.check_suite.withTypesMixin(value=["completed","requested","rerequested"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["completed","requested","rerequested"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.discussion


##### fn on.discussion.withTypes

```jsonnet
on.discussion.withTypes(value=["created","edited","deleted","transferred","pinned","unpinned","labeled","unlabeled","locked","unlocked","category_changed","answered","unanswered"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted","transferred","pinned","unpinned","labeled","unlabeled","locked","unlocked","category_changed","answered","unanswered"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.discussion.withTypesMixin

```jsonnet
on.discussion.withTypesMixin(value=["created","edited","deleted","transferred","pinned","unpinned","labeled","unlabeled","locked","unlocked","category_changed","answered","unanswered"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted","transferred","pinned","unpinned","labeled","unlabeled","locked","unlocked","category_changed","answered","unanswered"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.discussion_comment


##### fn on.discussion_comment.withTypes

```jsonnet
on.discussion_comment.withTypes(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.discussion_comment.withTypesMixin

```jsonnet
on.discussion_comment.withTypesMixin(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.issue_comment


##### fn on.issue_comment.withTypes

```jsonnet
on.issue_comment.withTypes(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.issue_comment.withTypesMixin

```jsonnet
on.issue_comment.withTypesMixin(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.issues


##### fn on.issues.withTypes

```jsonnet
on.issues.withTypes(value=["opened","edited","deleted","transferred","pinned","unpinned","closed","reopened","assigned","unassigned","labeled","unlabeled","locked","unlocked","milestoned","demilestoned"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["opened","edited","deleted","transferred","pinned","unpinned","closed","reopened","assigned","unassigned","labeled","unlabeled","locked","unlocked","milestoned","demilestoned"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.issues.withTypesMixin

```jsonnet
on.issues.withTypesMixin(value=["opened","edited","deleted","transferred","pinned","unpinned","closed","reopened","assigned","unassigned","labeled","unlabeled","locked","unlocked","milestoned","demilestoned"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["opened","edited","deleted","transferred","pinned","unpinned","closed","reopened","assigned","unassigned","labeled","unlabeled","locked","unlocked","milestoned","demilestoned"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.label


##### fn on.label.withTypes

```jsonnet
on.label.withTypes(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.label.withTypesMixin

```jsonnet
on.label.withTypesMixin(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.merge_group


##### fn on.merge_group.withTypes

```jsonnet
on.merge_group.withTypes(value=["checks_requested"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["checks_requested"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.merge_group.withTypesMixin

```jsonnet
on.merge_group.withTypesMixin(value=["checks_requested"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["checks_requested"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.milestone


##### fn on.milestone.withTypes

```jsonnet
on.milestone.withTypes(value=["created","closed","opened","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","closed","opened","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.milestone.withTypesMixin

```jsonnet
on.milestone.withTypesMixin(value=["created","closed","opened","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","closed","opened","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.project


##### fn on.project.withTypes

```jsonnet
on.project.withTypes(value=["created","updated","closed","reopened","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","updated","closed","reopened","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.project.withTypesMixin

```jsonnet
on.project.withTypesMixin(value=["created","updated","closed","reopened","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","updated","closed","reopened","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.project_card


##### fn on.project_card.withTypes

```jsonnet
on.project_card.withTypes(value=["created","moved","converted","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","moved","converted","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.project_card.withTypesMixin

```jsonnet
on.project_card.withTypesMixin(value=["created","moved","converted","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","moved","converted","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.project_column


##### fn on.project_column.withTypes

```jsonnet
on.project_column.withTypes(value=["created","updated","moved","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","updated","moved","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.project_column.withTypesMixin

```jsonnet
on.project_column.withTypesMixin(value=["created","updated","moved","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","updated","moved","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.pull_request


##### fn on.pull_request.withBranches

```jsonnet
on.pull_request.withBranches(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request.withBranchesIgnore

```jsonnet
on.pull_request.withBranchesIgnore(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request.withBranchesIgnoreMixin

```jsonnet
on.pull_request.withBranchesIgnoreMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request.withBranchesMixin

```jsonnet
on.pull_request.withBranchesMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request.withPaths

```jsonnet
on.pull_request.withPaths(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.pull_request.withPathsIgnore

```jsonnet
on.pull_request.withPathsIgnore(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.pull_request.withPathsIgnoreMixin

```jsonnet
on.pull_request.withPathsIgnoreMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.pull_request.withPathsMixin

```jsonnet
on.pull_request.withPathsMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.pull_request.withTags

```jsonnet
on.pull_request.withTags(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request.withTagsIgnore

```jsonnet
on.pull_request.withTagsIgnore(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request.withTagsIgnoreMixin

```jsonnet
on.pull_request.withTagsIgnoreMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request.withTagsMixin

```jsonnet
on.pull_request.withTagsMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request.withTypes

```jsonnet
on.pull_request.withTypes(value=["opened","synchronize","reopened"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["opened","synchronize","reopened"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.pull_request.withTypesMixin

```jsonnet
on.pull_request.withTypesMixin(value=["opened","synchronize","reopened"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["opened","synchronize","reopened"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.pull_request_review


##### fn on.pull_request_review.withTypes

```jsonnet
on.pull_request_review.withTypes(value=["submitted","edited","dismissed"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["submitted","edited","dismissed"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.pull_request_review.withTypesMixin

```jsonnet
on.pull_request_review.withTypesMixin(value=["submitted","edited","dismissed"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["submitted","edited","dismissed"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.pull_request_review_comment


##### fn on.pull_request_review_comment.withTypes

```jsonnet
on.pull_request_review_comment.withTypes(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.pull_request_review_comment.withTypesMixin

```jsonnet
on.pull_request_review_comment.withTypesMixin(value=["created","edited","deleted"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["created","edited","deleted"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.pull_request_target


##### fn on.pull_request_target.withBranches

```jsonnet
on.pull_request_target.withBranches(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request_target.withBranchesIgnore

```jsonnet
on.pull_request_target.withBranchesIgnore(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request_target.withBranchesIgnoreMixin

```jsonnet
on.pull_request_target.withBranchesIgnoreMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request_target.withBranchesMixin

```jsonnet
on.pull_request_target.withBranchesMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request_target.withPaths

```jsonnet
on.pull_request_target.withPaths(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.pull_request_target.withPathsIgnore

```jsonnet
on.pull_request_target.withPathsIgnore(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.pull_request_target.withPathsIgnoreMixin

```jsonnet
on.pull_request_target.withPathsIgnoreMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.pull_request_target.withPathsMixin

```jsonnet
on.pull_request_target.withPathsMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.pull_request_target.withTags

```jsonnet
on.pull_request_target.withTags(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request_target.withTagsIgnore

```jsonnet
on.pull_request_target.withTagsIgnore(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request_target.withTagsIgnoreMixin

```jsonnet
on.pull_request_target.withTagsIgnoreMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request_target.withTagsMixin

```jsonnet
on.pull_request_target.withTagsMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.pull_request_target.withTypes

```jsonnet
on.pull_request_target.withTypes(value=["opened","synchronize","reopened"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["opened","synchronize","reopened"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.pull_request_target.withTypesMixin

```jsonnet
on.pull_request_target.withTypesMixin(value=["opened","synchronize","reopened"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["opened","synchronize","reopened"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.push


##### fn on.push.withBranches

```jsonnet
on.push.withBranches(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.push.withBranchesIgnore

```jsonnet
on.push.withBranchesIgnore(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.push.withBranchesIgnoreMixin

```jsonnet
on.push.withBranchesIgnoreMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.push.withBranchesMixin

```jsonnet
on.push.withBranchesMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.push.withPaths

```jsonnet
on.push.withPaths(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.push.withPathsIgnore

```jsonnet
on.push.withPathsIgnore(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.push.withPathsIgnoreMixin

```jsonnet
on.push.withPathsIgnoreMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.push.withPathsMixin

```jsonnet
on.push.withPathsMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run when at least one file does not match paths-ignore or at least one modified file matches the configured paths. Path filters are not evaluated for pushes to tags.
The paths-ignore and paths keywords accept glob patterns that use the * and ** wildcard characters to match more than one path name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
You can exclude paths using two types of filters. You cannot use both of these filters for the same event in a workflow.
- paths-ignore - Use the paths-ignore filter when you only need to exclude path names.
- paths - Use the paths filter when you need to filter paths for positive matches and exclude paths.
##### fn on.push.withTags

```jsonnet
on.push.withTags(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.push.withTagsIgnore

```jsonnet
on.push.withTagsIgnore(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.push.withTagsIgnoreMixin

```jsonnet
on.push.withTagsIgnoreMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
##### fn on.push.withTagsMixin

```jsonnet
on.push.withTagsMixin(value)
```

PARAMETERS:

* **value** (`array`)

When using the push and pull_request events, you can configure a workflow to run on specific branches or tags. If you only define only tags or only branches, the workflow won't run for events affecting the undefined Git ref.
The branches, branches-ignore, tags, and tags-ignore keywords accept glob patterns that use the * and ** wildcard characters to match more than one branch or tag name. For more information, see https://help.github.com/en/github/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions#filter-pattern-cheat-sheet.
The patterns defined in branches and tags are evaluated against the Git ref's name. For example, defining the pattern mona/octocat in branches will match the refs/heads/mona/octocat Git ref. The pattern releases/** will match the refs/heads/releases/10 Git ref.
You can use two types of filters to prevent a workflow from running on pushes and pull requests to tags and branches:
- branches or branches-ignore - You cannot use both the branches and branches-ignore filters for the same event in a workflow. Use the branches filter when you need to filter branches for positive matches and exclude branches. Use the branches-ignore filter when you only need to exclude branch names.
- tags or tags-ignore - You cannot use both the tags and tags-ignore filters for the same event in a workflow. Use the tags filter when you need to filter tags for positive matches and exclude tags. Use the tags-ignore filter when you only need to exclude tag names.
You can exclude tags and branches using the ! character. The order that you define patterns matters.
- A matching negative pattern (prefixed with !) after a positive match will exclude the Git ref.
- A matching positive pattern after a negative match will include the Git ref again.
#### obj on.registry_package


##### fn on.registry_package.withTypes

```jsonnet
on.registry_package.withTypes(value=["published","updated"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["published","updated"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.registry_package.withTypesMixin

```jsonnet
on.registry_package.withTypesMixin(value=["published","updated"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["published","updated"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.release


##### fn on.release.withTypes

```jsonnet
on.release.withTypes(value=["published","unpublished","created","edited","deleted","prereleased","released"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["published","unpublished","created","edited","deleted","prereleased","released"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.release.withTypesMixin

```jsonnet
on.release.withTypesMixin(value=["published","unpublished","created","edited","deleted","prereleased","released"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["published","unpublished","created","edited","deleted","prereleased","released"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
#### obj on.workflow_run


##### fn on.workflow_run.withTypes

```jsonnet
on.workflow_run.withTypes(value=["requested","completed"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["requested","completed"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.workflow_run.withTypesMixin

```jsonnet
on.workflow_run.withTypesMixin(value=["requested","completed"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["requested","completed"]`

Selects the types of activity that will trigger a workflow run. Most GitHub events are triggered by more than one type of activity. For example, the event for the release resource is triggered when a release is published, unpublished, created, edited, deleted, or prereleased. The types keyword enables you to narrow down activity that causes the workflow to run. When only one activity type triggers a webhook event, the types keyword is unnecessary.
You can use an array of event types. For more information about each event and their activity types, see https://help.github.com/en/articles/events-that-trigger-workflows#webhook-events.
##### fn on.workflow_run.withWorkflows

```jsonnet
on.workflow_run.withWorkflows(value)
```

PARAMETERS:

* **value** (`array`)


##### fn on.workflow_run.withWorkflowsMixin

```jsonnet
on.workflow_run.withWorkflowsMixin(value)
```

PARAMETERS:

* **value** (`array`)


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

