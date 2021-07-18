all: readme tils

readme:
	.bin/gen > readme.md

tils:
	.bin/jsons > build/tils.json
