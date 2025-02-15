.PHONY: all
all: linux darwin armhf arm64

.PHONY: linux
linux:
	GOOS=linux go build -o license-check --ldflags "-s -w" -a -installsuffix cgo

.PHONY: darwin
darwin:
	GOOS=darwin go build -o license-check-darwin --ldflags "-s -w" -a -installsuffix cgo

.PHONY: armhf
armhf:
	GOOS=linux GOARCH=arm GOARM=6 go build -o license-check-armhf --ldflags "-s -w" -a -installsuffix cgo

.PHONY: arm64
arm64:
	GOOS=linux GOARCH=arm64 go build -o license-check-arm64 --ldflags "-s -w" -a -installsuffix cgo
