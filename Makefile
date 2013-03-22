build:
	rm bin/pixi.js
	(cd build && ant -f PixiBuild.xml)
	ln -f bin/pixi.js jam/pixi.build.js
	(cd jam && python build.py)
	rm -f jam/pixi.build.js

clean:
	rm -f jam/pixi.js

.PHONY: build clean
