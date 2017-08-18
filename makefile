SHELL := /bin/bash

all:
	cargo build --target=wasm32-unknown-emscripten --release
	mkdir -p site_wasm
	find target/wasm32-unknown-emscripten/release/deps -type f -name "*.wasm" | xargs -I {} cp {} site_wasm/site.wasm
	find target/wasm32-unknown-emscripten/release/deps -type f ! -name "*.asm.js" -name "*.js" | xargs -I {} cp {} site_wasm/site.js
	
	cargo build --target=asmjs-unknown-emscripten
	mkdir -p site_asmjs
	find target/asmjs-unknown-emscripten/debug -type f -name "wasm-demo.js" | xargs -I {} cp {} site_asmjs/site.asm.js