#!/bin/bash -ex

echo "Now testing in a script!!!"
go-bin/hello-go &
sleep 1
curl -v http://127.0.0.1:8080/