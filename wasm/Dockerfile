FROM --platform=wasi/wasm32 scratch
COPY --chmod=755 ./hello-wasm.wasm /hello-wasm.wasm
ENTRYPOINT ["/hello-wasm.wasm"]
