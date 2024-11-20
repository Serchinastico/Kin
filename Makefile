compile:
	cd kin/grammar; antlr PBXProj.g4 -Dlanguage=Python3

install: compile
	pip install -e .

test: install
	./tests/tester.py

test_last: install
	find tests -type f -name "*.pbxproj" -print0 \
	| xargs -0 stat -f "%m %N" \
	| sort -rn | head -1 | cut -f2- -d" " \
	| xargs kin