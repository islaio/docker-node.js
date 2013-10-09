#DOCKER-VERSION 0.3.4
#Inspired in docker-haproxy (http://github.com/islaio/docker-haproxy)

FROM isla/ubuntu-build-tools:python
MAINTAINER Joaquin Garcia "joaquin@isla.io"
RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:chris-lea/node.js

##Adding sources.list data
deb http://us.archive.ubuntu.com/ubuntu/ precise main restricted
deb-src http://us.archive.ubuntu.com/ubuntu/ precise main restricted
##Major bug fix updated produced after the final release of the distribution
deb http://us.archive.ubuntu.com/ubuntu/ precise-updates main restricted
deb-src http://us.archive.ubuntu.com/ubuntu/ precise-updates main restricted
##Universe
deb http://us.archive.ubuntu.com/ubuntu/ precise universe
deb-src http://us.archive.ubuntu.com/ubuntu/ precise universe
deb http://us.archive.ubuntu.com/ubuntu/ precise-updates universe
deb-src http://us.archive.ubuntu.com/ubuntu/ precise-updates universe


RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install nodejs 
