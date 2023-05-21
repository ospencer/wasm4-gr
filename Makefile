examples:
	make hello music midi

hello:
	grain compile --release --elide-type-info --import-memory --use-start-section --memory-base 8192 --initial-memory-pages 1 --maximum-memory-pages 1 --wasi-polyfill src/wasm4-wasi-polyfill.gr -I src examples/hello-world.gr

music:
	grain compile --release --elide-type-info --import-memory --use-start-section --memory-base 8192 --initial-memory-pages 1 --maximum-memory-pages 1 --wasi-polyfill src/wasm4-wasi-polyfill.gr -I src examples/music.gr

midi:
	grain compile --release --elide-type-info --import-memory --use-start-section --memory-base 8192 --initial-memory-pages 1 --maximum-memory-pages 1 --wasi-polyfill src/wasm4-wasi-polyfill.gr -I src examples/midi.gr

.PHONY: examples hello music midi
