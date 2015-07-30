
BUILD_ID ?= ${USER}


.PHONY: build
build:
	docker build -t alpine-package-mirror:${BUILD_ID} .
