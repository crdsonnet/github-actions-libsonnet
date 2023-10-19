generate:
	jsonnet -m gen -S -J vendor main.libsonnet | xargs -n 1 -- jsonnetfmt --no-use-implicit-plus -i
	
