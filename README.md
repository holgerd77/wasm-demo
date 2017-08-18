# wasm-demo

Experimentation with running Rust in the browser/with node as ``WASM`` and ``asm.js`` following this tutorial:
http://asquera.de/blog/2017-04-10/the-path-to-rust-on-the-web/

Uses the Rust code from this repository:
https://github.com/cdetrio/wasm-rust-elliptic-pairing-example


Install the tools from the tutorial (make sure to use the ``incoming`` branch of ``emsdk`` as well
as the latest node version). 

Run ``make`` to build both ``WASM`` and ``asm.js`` (see ``makefile``).

## Asm.js

Module can now be required and used from node with:

```
var Module = require('./site_asmjs/site.asm.js')
Module._add(2, 3)
Module._bn128(5)

```

(was not able to really export the desired functions yet and eliminating the ``_``.)

## WASM

Start ``python -m SimpleHTTPServer`` and browse to http://localhost:8000/site_wasm/site.html.

Example on ``gh-pages``: https://holgerd77.github.io/wasm-demo/ 

