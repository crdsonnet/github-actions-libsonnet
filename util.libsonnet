local d = import './vendor/github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  '#':: d.package.newSub('util', ''),

  local indentDoc(doc, indent='') =
    if indent == ''
    then doc
    else
      std.join(
        '\n',
        std.map(
          function(line)
            if line != ''
            then indent + line
            else line,
          std.split(doc, '\n')
        )
      ),

  local manifestArray(arr, indent='', sep='\n') =
    indentDoc(
      std.join(sep, [
        '-' +
        indentDoc(
          std.manifestYamlDoc(
            item,
            indent_array_in_object=true,
            quote_keys=false
          ),
          '  '
        )[1:]
        for item in arr
      ]),
      indent,
    ),

  local manifestField(obj, field, indent='') =
    indentDoc(
      std.manifestYamlDoc(
        { [field]: obj[field] },
        indent_array_in_object=true,
        quote_keys=false
      ),
      indent,
    ),

  local manifestFields(obj, fields, indent='', sep='\n') =
    std.join(
      sep,
      std.filterMap(
        function(field) field in obj,
        function(field) manifestField(obj, field, indent),
        fields,
      )
    ),

  local manifestSteps(steps, indent='') =
    indentDoc(
      'steps:\n'
      + manifestArray(steps, indent, sep='\n\n'),
      indent,
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

    std.stripChars(
      std.join(
        '\n\n',
        [
          manifestFields(
            action,
            [
              'name',
              'author',
              'description',
            ],
          ),
          manifestFields(
            action,
            [
              'inputs',
              'outputs',
            ],
            sep='\n\n',
          ),
          'runs:\n'
          + manifestFields(
            action.runs,
            ['using'] + std.filter(
              function(key) !std.member(['using', 'steps'], key),
              std.objectFields(action.runs)
            ),
            '  ',
            '\n\n',
          ),
          manifestSteps(action.runs.steps, '  '),
          manifestFields(action, ['branding']),
        ]
      ),
      '\n',
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

    local manifestJob(job, indent='') =
      std.join('\n', [
        manifestFields(
          job,
          ['id', 'name'] + std.filter(
            function(k) !std.member(['id', 'name', 'steps'], k),
            std.objectFields(job)
          ),
          indent,
        ),
        manifestSteps(job.steps, indent),
      ]);

    local manifestJobs(jobs) =
      'jobs:\n'
      + indentDoc(
        std.join(
          '\n\n',
          [
            job
            + ':\n'
            + manifestJob(jobs[job], '  ')
            for job in sortJobByNeeds(jobs)
          ]
        ),
        '  '
      );

    std.stripChars(
      std.join(
        '\n\n',
        [
          manifestFields(
            workflow,
            [
              'name',
              'run-name',
            ]
          ),
          // special case: std.manifestYamlDoc always quotes "on"
          'on:\n' + manifestField(workflow, 'on')[6:],
          manifestFields(
            workflow,
            [
              'permissions',
              'env',
              'defaults',
              'concurrency',
            ],
            sep='\n\n',
          ),
          manifestJobs(workflow.jobs),
        ]
      ),
      '\n',
    ),
}
