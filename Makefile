.PHONY: prepare clean antora

antora: prepare
	npx antora --stacktrace antora-playbook.yml

prepare:
	git submodule update --remote --merge

clean:
	rm -rf build/