# hello-wasm

## build

    cargo build --target wasm32-wasi --release
    docker buildx build -t hello-wasm:0.1 .
    docker container run --rm --name=mydockerwasm --runtime=io.containerd.wasmedge.v1 hello-wasm:0.1
