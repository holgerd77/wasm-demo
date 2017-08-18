# wasm-demo

Experimentation with running Rust in the browser/with node as ``WASM`` following this tutorial:
http://asquera.de/blog/2017-04-10/the-path-to-rust-on-the-web/

Uses the Rust code from this repository:
https://github.com/cdetrio/wasm-rust-elliptic-pairing-example


Install the tools from the tutorial (make sure to use the ``incoming`` branch of ``emsdk`` as well
as the latest node version).

Run ``make`` to do the build (see ``makefile``).

Start ``python -m SimpleHTTPServer`` and browse to http://localhost:8000/site/site.html.

Example on ``gh-pages``: https://holgerd77.github.io/wasm-demo/ 

