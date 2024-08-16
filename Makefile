DEFAULT: docs
JSONNET_BIN ?= jsonnet

jsonnetfile.json:
	jb init || true

jsonnetfile.lock.json: jsonnetfile.json
	jb install

vendor: jsonnetfile.lock.json

.PHONY: test
test: vendor jsonnetfile.lock.json
	@cd test/ && make test

.PHONY: fmt
fmt:
	@find . \
		-path './.git' -prune \
		-o -name 'vendor' -prune \
		-o -name '*.libsonnet' -print \
		-o -name '*.jsonnet' -print \
		| xargs -n 1 -- jsonnetfmt --no-use-implicit-plus -i

docs: vendor raw.libsonnet main.libsonnet
	@rm -rf docs/
	@$(JSONNET_BIN) \
		-J generator/vendor \
		-S -c -m docs \
		-e '(import "github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet").render(import "main.libsonnet")'

raw.libsonnet: generator vendor examples generator
	jsonnet -J generator/vendor -S generator/generate.jsonnet | jsonnetfmt - > raw.libsonnet

EXAMPLES_SOURCES := $(wildcard examples/*.jsonnet)
EXAMPLES_FILES := $(EXAMPLES_SOURCES:.jsonnet=.output.yaml)
examples: $(EXAMPLES_FILES)

examples/%.output.yaml: examples/%.jsonnet
	jsonnet -S $< > $@
