IMAGE_NAME := ryosan470/mysql-dev-docker
DOCKER_BUILDKIT=1

.PHONY: build
build:
	docker build -t ${IMAGE_NAME} .

.PHONY: run
run:
	docker run \
			--rm \
			--name dev-mysql \
			-it \
			-v $(PWD)/src:/opt/mysql-server/storage \
			-v $(PWD)/dev:/opt/mysql-server/dev \
			${IMAGE_NAME} \
			/bin/bash
