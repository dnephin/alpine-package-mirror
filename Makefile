
BUILD_ID ?= ${USER}


.PHONY: build
build:
	docker build -t alpine-package-mirror:${BUILD_ID} .
	@echo Image tag: alpine-package-mirror:${BUILD_ID}

.PHONY: build_repo
build_repo:
	docker build -t alpine-package-data:${BUILD_ID} repo/
	@echo Image tag: alpine-package-data:${BUILD_ID}
