BUILD-ARGS = docker build -t
RUN-ARGS = docker run -it --rm \
	--volume=$(shell pwd):/opt/demo \
	--net=host

python:
	$(BUILD-ARGS) demo-python:latest -f Dockerfile.python .
	$(RUN-ARGS) demo-python:latest

haskell:
	$(BUILD-ARGS) demo-haskell:latest -f Dockerfile.haskell .
	$(RUN-ARGS) demo-haskell:latest
