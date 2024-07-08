JSONNET_BIN ?= jsonnet

jsonnetfile.json:
	jb init

vendor jsonnetfile.lock.json: jsonnetfile.json
	jb install

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

.PHONY: docs
docs: jsonnetfile.json
	@rm -rf docs/
	@$(JSONNET_BIN) \
		-J generator/vendor \
		-S -c -m docs \
		-e '(import "github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet").render(import "main.libsonnet")'

.PHONY: generate
generate: jsonnetfile.json
	jsonnet -J generator/vendor -S generator/generate.jsonnet | jsonnetfmt - > raw.libsonnet
