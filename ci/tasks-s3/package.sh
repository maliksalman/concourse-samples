#!/bin/bash -ex

apt-get install -y golang
go build -o hello-go my-repo/go/hello.go
cp my-repo/go/manifest.yml .

version=$(cat version/version)
zip go-bin/hello-go-${version}.zip \
    hello-go \
    manifest.yml
