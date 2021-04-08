# Dockerfile for node-red-contrib-tcp-tls
#
# Source:: https://github.com/ampledata/node-red-contrib-tcp-tls
# Author:: Greg Albrecht <oss@undef.net>
# Copyright:: Copyright 2021 Orion Labs, Inc.
# License:: Apache License, Version 2.0
#

FROM node:14-buster

EXPOSE 1880

COPY . /node-red-contrib-tcp-tls

RUN npm install --unsafe-perm -g node-red
RUN npm install --unsafe-perm -g /node-red-contrib-tcp-tls

CMD node-red


