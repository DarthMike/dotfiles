#!/bin/sh

echo "...Installing go libraries via go get..."
go get golang.org/x/tools/cmd/godoc
go get golang.org/x/tools/cmd/vet
go get github.com/golang/lint/golint
echo "...Done..."

