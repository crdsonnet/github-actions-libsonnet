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
    runs+: {
      composite+: {
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
  },
}
