#!/bin/bash -ex

echo "Now building in a script!!!"
apt-get install -y golang
go build my-repo/go/hello.go
cp hello go-bin/hello-go
cp my-repo/go/manifest.yml go-bin/
