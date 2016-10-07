FROM ubuntu:14.04

MAINTAINER Jonathan Robin Langford <jrobinlangford@gmail.com>

RUN apt-get update && \
	apt-get -y install curl git make g++

RUN curl -o /tmp/node.tar.gz https://nodejs.org/download/release/v4.4.7/node-v4.4.7-linux-x64.tar.gz && \
	cd /usr/local && \
	tar --strip-components 1 -xzf /tmp/node.tar.gz
