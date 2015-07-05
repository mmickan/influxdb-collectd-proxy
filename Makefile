PWD := $(shell pwd)
GOPATH := $(PWD)/build

all: clean build

build:
	GOPATH=$(GOPATH) go get github.com/tools/godep
	GOPATH=$(GOPATH) $(GOPATH)/bin/godep restore
	GOPATH=$(GOPATH) go build -o bin/influxdb-collectd-proxy

clean: 
	rm -rf $(GOPATH)

