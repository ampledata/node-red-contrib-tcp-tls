# Makefile for node-red-contrib-tcp-tls
#
# Source:: https://github.com/ampledata/node-red-contrib-tcp-tls
# Author:: Greg Albrecht <oss@undef.net>
# Copyright:: Copyright 2021 Orion Labs, Inc.
# License:: Apache License, Version 2.0
#

.DEFAULT_GOAL := all


all: install

install:
	npm install -g .

publish:
	npm publish

lint: jshint eslint jslint

jshint:
	jshint *.js

eslint:
	eslint *.js

jslint:
	jslint *.js

docker_build:
	docker build -t testing:node-red-contrib-tcp-tls .

docker_run:
	docker run -p 1880:1880 -it --rm --name node-red-contrib-tcp-tls testing:node-red-contrib-tcp-tls
