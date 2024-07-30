local d = import './vendor/github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#':: d.package.newSub('util', ''),

  local manifestField(obj, field, indent='') =
    indent
    + std.join(
      '\n' + indent,
      std.split(
        std.manifestYamlDoc(
          { [field]: obj[field] },
          indent_array_in_object=true,
          quote_keys=false
        ),
        '\n',
      )
    ),

  local manifestFields(obj, fields, indent='') =
    std.filterMap(
      function(field) field in obj,
      function(field) manifestField(obj, field, indent),
      fields,
    ),

  local handlesFields(fields, obj) =
    std.all(
      std.map(
        function(f)
          std.member(fields, f),
        std.objectFields(obj)
      )
    ),

  '#manifestAction':: d.func.new(
    |||
      `manifestAction` manifests an action in an opinionated Yaml format.

      It manifest fields in the same order as they show up in the syntax docs:
      https://docs.github.com/en/actions/creating-actions/metadata-syntax-for-github-actions
    |||,
    args=[d.argument.new('action', d.T.object)]
  ),
  manifestAction(action):
    local fields = [
      'name',
      'description',
      'author',
      'inputs',
      'outputs',
      'runs',
      'branding',
    ];

    assert
      handlesFields(fields, action)
      : 'Action contains fields that are not handled.';

    std.join(
      '\n\n',
      [
        std.join(
          '\n',
          manifestFields(
            action,
            [
              'name',
              'author',
              'description',
            ]
          )
        ),
      ]
      + manifestFields(
        action,
        [
          'inputs',
          'outputs',
        ]
      )
      + [
        'runs:\n'
        + std.join(
          '\n\n',
          manifestFields(
            action.runs,
            ['using'] + std.filter(
              function(k) k != 'using',
              std.objectFields(action.runs)
            ),
            '  '
          )
        ),
      ]
      + manifestFields(action, ['branding'])
    ),

  '#manifestWorkflow':: d.func.new(
    |||
      `manifestWorkflow` manifests a workflow in an opinionated Yaml format.

      It manifest fields in the same order as they show up in the syntax docs:
      https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions
    |||,
    args=[d.argument.new('workflow', d.T.object)]
  ),
  manifestWorkflow(workflow):
    local fields = [
      'name',
      'run-name',
      'on',
      'permissions',
      'env',
      'defaults',
      'concurrency',
      'jobs',
    ];

    assert
      handlesFields(fields, workflow)
      : 'Workflow contains fields that are not handled.';

    local sortJobByNeeds(jobs) =
      local getDepedencies(key) =
        local job = jobs[key];
        if 'needs' in job
        then
          if std.isArray(job.needs)
          then std.join('', [
            getDepedencies(dep) + dep
            for dep in job.needs
          ]) + key
          else job.needs + key
        else key;

      std.sort(
        std.objectFields(jobs),
        getDepedencies
      );

    std.join(
      '\n\n',
      manifestFields(
        workflow,
        [
          'name',
          'run-name',
        ]
      )
      // special case: std.manifestYamlDoc always quotes "on"
      + ['on:\n' + manifestField(workflow, 'on')[6:]]
      + manifestFields(
        workflow,
        [
          'permissions',
          'env',
          'defaults',
          'concurrency',
        ]
      )
      + [
        'jobs:\n'
        + std.join(
          '\n\n',
          manifestFields(
            workflow.jobs,
            sortJobByNeeds(workflow.jobs),
            '  '
          )
        ),
      ]
    ),
}
