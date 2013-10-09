#DOCKER-VERSION 0.3.4
#Inspired in docker-haproxy (http://github.com/islaio/docker-haproxy)

FROM isla/ubuntu-build-tools:python
MAINTAINER Joaquin Garcia "joaquin@isla.io"
RUN apt-get install -y python-software-properties
RUN add-apt-repository -y ppa:chris-lea/node.js

##Adding sources.list data
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise main restricted" >> /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ precise main restricted" >> /etc/apt/sources.list
##Major bug fix updated produced after the final release of the distribution
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise-updates main restricted" >> /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ precise-updates main restricted" >> /etc/apt/sources.list
##Universe
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ precise universe" >> /etc/apt/sources.list
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise-updates universe" >> /etc/apt/sources.list
RUN echo "deb-src http://us.archive.ubuntu.com/ubuntu/ precise-updates universe" >> /etc/apt/sources.list

RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install nodejs

RUN wget https://raw.github.com/joaquindev/docker-node.js/master/Dockerfile

