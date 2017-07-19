BUILD-ARGS = docker build -t
RUN-ARGS = docker run -it --rm \
	--volume=$(shell pwd):/opt/demo \
	--net=host

python-build:
	$(BUILD-ARGS) demo-python:latest -f Dockerfile.python .

python-run: python-build
	$(RUN-ARGS) demo-python:latest

python-test: python-build
	$(RUN-ARGS) demo-python:latest pytest demo.py

haskell-build:
	$(BUILD-ARGS) demo-haskell:latest -f Dockerfile.haskell .

haskell-run: haskell-build
	$(RUN-ARGS) demo-haskell:latest

haskell-test: haskell-build
	$(RUN-ARGS) demo-haskell:latest
