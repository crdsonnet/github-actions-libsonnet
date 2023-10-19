{
  '#withConcurrency': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: 'Concurrency ensures that only a single job or workflow using the same concurrency group will run at a time. A concurrency group can be any string or expression. The expression can use any context except for the secrets context. \nYou can also specify concurrency at the workflow level. \nWhen a concurrent job or workflow is queued, if another job or workflow using the same concurrency group in the repository is in progress, the queued job or workflow will be pending. Any previously pending job or workflow in the concurrency group will be canceled. To also cancel any currently running job or workflow in the same concurrency group, specify cancel-in-progress: true.' } },
  withConcurrency(value): { concurrency: value },
  '#withConcurrencyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: 'Concurrency ensures that only a single job or workflow using the same concurrency group will run at a time. A concurrency group can be any string or expression. The expression can use any context except for the secrets context. \nYou can also specify concurrency at the workflow level. \nWhen a concurrent job or workflow is queued, if another job or workflow using the same concurrency group in the repository is in progress, the queued job or workflow will be pending. Any previously pending job or workflow in the concurrency group will be canceled. To also cancel any currently running job or workflow in the same concurrency group, specify cancel-in-progress: true.' } },
  withConcurrencyMixin(value): { concurrency+: value },
  concurrency+:
    {
      '#withConcurrency': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
      withConcurrency(value): { concurrency: value },
    },
  '#withIf': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['boolean', 'number', 'string'] }], help: 'You can use the if conditional to prevent a job from running unless a condition is met. You can use any supported context and expression to create a conditional.\nExpressions in an if conditional do not require the ${{ }} syntax. For more information, see https://help.github.com/en/articles/contexts-and-expression-syntax-for-github-actions.' } },
  withIf(value): { 'if': value },
  '#withName': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: 'The name of the job displayed on GitHub.' } },
  withName(value): { name: value },
  '#withNeeds': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
  withNeeds(value): { needs: value },
  '#withPermissions': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
  withPermissions(value): { permissions: value },
  '#withSecrets': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: "When a job is used to call a reusable workflow, you can use 'secrets' to provide a map of secrets that are passed to the called workflow. Any secrets that you pass must match the names defined in the called workflow." } },
  withSecrets(value): { secrets: value },
  '#withSecretsMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: "When a job is used to call a reusable workflow, you can use 'secrets' to provide a map of secrets that are passed to the called workflow. Any secrets that you pass must match the names defined in the called workflow." } },
  withSecretsMixin(value): { secrets+: value },
  secrets+:
    {
      '#withEnv': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
      withEnv(value): { secrets+: { env: value } },
    },
  '#withStrategy': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'object' }], help: 'A strategy creates a build matrix for your jobs. You can define different variations of an environment to run each job in.' } },
  withStrategy(value): { strategy: value },
  '#withStrategyMixin': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'object' }], help: 'A strategy creates a build matrix for your jobs. You can define different variations of an environment to run each job in.' } },
  withStrategyMixin(value): { strategy+: value },
  strategy+:
    {
      '#withFailFast': { 'function': { args: [{ default: true, enums: null, name: 'value', type: 'boolean' }], help: 'When set to true, GitHub cancels all in-progress jobs if any matrix job fails. Default: true' } },
      withFailFast(value=true): { strategy+: { 'fail-fast': value } },
      '#withMatrix': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
      withMatrix(value): { strategy+: { matrix: value } },
      '#withMaxParallel': { 'function': { args: [{ default: null, enums: null, name: 'value', type: ['number', 'string'] }], help: 'The maximum number of jobs that can run simultaneously when using a matrix job strategy. By default, GitHub will maximize the number of jobs run in parallel depending on the available runners on GitHub-hosted virtual machines.' } },
      withMaxParallel(value): { strategy+: { 'max-parallel': value } },
    },
  '#withUses': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: "The location and version of a reusable workflow file to run as a job, of the form './{path/to}/{localfile}.yml' or '{owner}/{repo}/{path}/{filename}@{ref}'. {ref} can be a SHA, a release tag, or a branch name. Using the commit SHA is the safest for stability and security." } },
  withUses(value): { uses: value },
  '#withWith': { 'function': { args: [{ default: null, enums: null, name: 'value', type: 'string' }], help: '' } },
  withWith(value): { with: value },
}
