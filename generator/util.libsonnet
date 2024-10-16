local a = import 'github.com/crdsonnet/astsonnet/main.libsonnet';
local autils = import 'github.com/crdsonnet/astsonnet/utils.libsonnet';
local crdsonnet = import 'github.com/crdsonnet/crdsonnet/crdsonnet/main.libsonnet';
local d = import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet';

{
  processor: crdsonnet.processor.new('ast'),

  subPackageDocstring(name, help=''):
    a.object.new([
      a.field.new(
        a.string.new('#'),
        a.literal.new(
          std.manifestJsonEx(
            d.package.newSub(name, help)
            , '  ', ''
          ),
        ),
      ),
    ]),

  mergeDocstring(name, obj, help=''):
    autils.deepMergeObjects([
      a.object.new([
        a.field.new(
          a.id.new(name),
          self.subPackageDocstring(name, help)
        ),
      ]),
      obj,
    ]),
}
