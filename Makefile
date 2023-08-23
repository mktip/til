all: readme tils

readme:
	.bin/gen > readme.md

tils:
	mkdir -p build/
	.bin/jsons > build/tils.json
