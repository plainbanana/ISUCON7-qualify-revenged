GOPATH := ${PWD}
export GOPATH

build:
	go build -v isubata

vet:
	go vet ./src/isubata/...

install-depends:
	sh -c "cd ${PWD}/src/isubata && ${GOBIN}/dep ensure"
