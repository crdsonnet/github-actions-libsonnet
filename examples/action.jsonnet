local ga = import '../main.libsonnet';
local step = ga.action.composite.runs.step;

local exampleAction =
  ga.action.composite.new('example composite action')
  + ga.action.composite.runs.withSteps([
    step.withName('Checkout')
    + step.withUses('actions/checkout@v4'),
  ]);

exampleAction.manifest()
