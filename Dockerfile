#DOCKER-VERSION 0.3.4
#Inspired in docker-haproxy (http://github.com/islaio/docker-haproxy)

FROM isla/ubuntu-build-tools:python
MAINTAINER Joaquin Garcia "joaquin@isla.io"
RUN apt-get install python-software-properties
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install nodejs 
