(import './raw.libsonnet')
+ {
  job+: {
    steps:: {},
    step: (super.steps + { '#'+: { name: 'step' } }),
  },
}
