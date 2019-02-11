.PHONY: docker
IMAGE_NAME := exp-docker

docker:
	docker build -t ${IMAGE_NAME} .
	docker run \
			--rm \
			--name dev-mysql \
			-it \
			-v $(PWD)/src:/opt/mysql-server/storage \
			${IMAGE_NAME} \
			/bin/bash
