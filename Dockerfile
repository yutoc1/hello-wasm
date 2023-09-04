FROM --platform=wasi/wasm32 scratch
COPY ./target/wasm32-wasi/release/test-rust-wasm.wasm /test-rust-wasm.wasm
ENTRYPOINT ["test-rust-wasm.wasm"]
