# wasm4-gr

This project contains Grain bindings to [WASM-4](https://wasm4.org/), a low-level fantasy game console for building small games with WebAssembly. You can find docs for the library [here], but for a general overview of WASM-4, check our their [docs](https://wasm4.org/docs/).

## Building your project

The only value that needs to be provided by your module is a function called `update`, taking no arguments and returning no values. This function is called on each frame of the game engine.

WASM-4 modules (called cartridges) must be <64k and meet some other specific requirements, so a number of compiler flags are required to produce compatible cartridges. To compile the `hello-world.gr` example in the `examples` directory, run

```sh
make hello
```

or to invoke the compiler directly, run

```sh
grain compile --release --elide-type-info --import-memory --use-start-section --memory-base 8192 --initial-memory-pages 1 --maximum-memory-pages 1 --wasi-polyfill src/wasm4-wasi-polyfill.gr -I src examples/hello-world.gr
```

To depend on `wasm4-gr` in a directory outside of your project, add the `src` directory to your include path with `-I path/to/wasm4-gr/src`. You'll also need to provide the path to the WASI polyfill provided by this library with the `--wasi-polyfill` flag.

## The examples

The `hello-world.gr` file contains the basic game that is shown in the WASM-4 tutorial, and the `music.gr` file contains a game that utilities WASM-4's sound system to play a simple tune.

## Tips to fit within 64k

This limitation is part of the fun. Grain's extensive `Number` type brings in quite a bit of support code, so avoiding it (and standard libraries that depend on it) is the best way to keep the cartridge size small. This includes the math operations provided by `Pervasives`, like `+` and `==`, but conveniently, the WASM-4 API uses the `Uint8` and `Uint16` types. The `hello-world.gr` example is only 7k, and even with a number of sprites and a good chunk of music data, the `music.gr` example is 21k.

Good luck and have fun!
