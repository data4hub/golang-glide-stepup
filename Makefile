TAG := rest4hub/golang-glide-stepup

build:
	docker pull rest4hub/golang-glide; \
	docker build -t ${TAG} .

run:    
	docker run --rm -it ${TAG}

.PHONY: build
