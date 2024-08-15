local d = import './vendor/github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

(import './raw.libsonnet')
+ {
  util: import './util.libsonnet',

  job+: {
    // The generated code implements a singular 'step' to accomodate for a nicer library.
    // The withStep* functions below fix the side effects of this.
    // This also ensures language server support works properly.
    '#withStep':: {},
    '#withSteps':: super['#withStep'],
    withStep: self.withSteps,
    withSteps(value): {
      steps:
        (if std.isArray(value)
         then value
         else [value]),
    },
    '#withStepMixin':: {},
    '#withStepsMixin':: super['#withStepMixin'],
    withStepMixin: self.withStepsMixin,
    withStepsMixin(value): {
      steps+:
        (if std.isArray(value)
         then value
         else [value]),
    },
  },

  action+: {
    composite+: {
      '#new'::
        d.func.new(
          |||
            `new` initializes a Composite action. Use `withSteps()` to add steps.
          |||,
          args=[
            d.arg('name', d.T.string),
            d.arg('description', d.T.string, default='defaults to the name'),
          ],
        ),
      new(name, description=name):
        self.withName(name)
        + self.withDescription(description)
        + self.runs.withUsing()
        + self.runs.withSteps([]),

      runs+: {
        // The generated code implements a singular 'step' to accomodate for a nicer library.
        // The withStep* functions below fix the side effects of this.
        // This also ensures language server support works properly.
        '#withStep':: {},
        '#withSteps':: super['#withStep'],
        withStep: self.withSteps,
        withSteps(value): {
          runs+: {
            steps:
              (if std.isArray(value)
               then value
               else [value]),
          },
        },
        '#withStepMixin':: {},
        '#withStepsMixin':: super['#withStepMixin'],
        withStepMixin: self.withStepsMixin,
        withStepsMixin(value): {
          runs+: {
            steps+:
              (if std.isArray(value)
               then value
               else [value]),
          },
        },
      },
    },
    javascript+: {
      '#new'::
        d.func.new(
          |||
            `new` initializes a Javascript action.
          |||,
          args=[
            d.arg('name', d.T.string),
            d.arg('main', d.T.string),
            d.arg('description', d.T.string, default='defaults to the name'),
          ],
        ),
      new(name, main, description=name):
        self.withName(name)
        + self.withDescription(description)
        + self.runs.withUsing()
        + self.runs.withMain(main),
    },
    docker+: {
      '#new'::
        d.func.new(
          |||
            `new` initializes a Composite action.
          |||,
          args=[
            d.arg('name', d.T.string),
            d.arg('image', d.T.string),
            d.arg('description', d.T.string, default='defaults to the name'),
          ],
        ),
      new(name, image, description=name):
        self.withName(name)
        + self.withDescription(description)
        + self.runs.withUsing()
        + self.runs.withImage(image),
    },

  },
}
