# hello-wasm

## build

    cargo build --target wasm32-wasi --release
    sudo docker buildx build -t hello-wasm:0.1 .
    sudo docker container run --rm --name=mydockerwasm --runtime=io.containerd.wasmedge.v1 hello-wasm:0.1
