FROM --platform=wasi/wasm32 scratch
COPY --chmod=755 ./target/wasm32-wasi/release/hello-wasm.wasm /hello-wasm.wasm
ENTRYPOINT ["/hello-wasm.wasm"]
