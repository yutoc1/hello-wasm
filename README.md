# hello-wasm

以下の3通りで実行が可能。

a. rustのソースコードからwasmファイルを生成して実行する
b. すでに生成されたwasmファイルを実行する
c. Docker Hubからダウンロードして実行する

## 0. preparation

   sudo docker buildx create --name wasmbuilder --driver docker-container --bootstrap↲
   sudo docker buildx use wasmbuilder↲ 

## 1-a. source code build and run

    cargo build --target wasm32-wasi --release

    sudo docker buildx build --platform wasi/wasm32 --load -t hello-wasm:0.1 .
    sudo docker container run --rm --name=hello-wasm --runtime=io.containerd.wasmedge.v1 --platform=wasi/wasm32 hello-wasm:0.1

## 1-b. wasm run

    cd wasm
    sudo docker buildx build --platform wasi/wasm32 --load -t hello-wasm:0.1 .
    sudo docker container run --rm --name=hello-wasm --runtime=io.containerd.wasmedge.v1 --platform=wasi/wasm32 hello-wasm:0.1

## 1-c. Docker Hub Use

    sudo docker container run --rm --name=hello-wasm --runtime=io.containerd.wasmedge.v1 --platform=wasi/wasm32 yutoc1/hello-wasm:0.1
