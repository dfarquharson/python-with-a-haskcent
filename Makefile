RUN-ARGS = --volume=$(shell pwd):/opt/demo \
	--net=host

python:
	docker build -t demo-python:latest -f Dockerfile.python .
	docker run -it $(RUN-ARGS) demo-python:latest

haskell:
	docker build -t demo-haskell:latest -f Dockerfile.haskell .
	docker run -it $(RUN-ARGS) demo-haskell:latest
