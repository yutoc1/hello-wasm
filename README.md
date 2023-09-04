# hello-wasm

Rustのソースコードからwasmファイルを生成して実行する方法1とすでに生成されたwasmファイルを実行する方法2を用意

## 1. source code build and run

    cargo build --target wasm32-wasi --release
    sudo docker buildx build -t hello-wasm:0.1 .
    sudo docker container run --rm --name=mydockerwasm --runtime=io.containerd.wasmedge.v1 hello-wasm:0.1

## 2. wasm run

    cd wasm
    sudo docker buildx build -t hello-wasm:0.1 .
    sudo docker container run --rm --name=mydockerwasm --runtime=io.containerd.wasmedge.v1 hello-wasm:0.1
