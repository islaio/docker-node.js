#DOCKER-VERSION 0.3.4
#Inspired in docker-haproxy (http://github.com/islaio/docker-haproxy)

FROM isla/ubuntu-build-tools:python
MAINTAINER Joaquin Garcia "joaquin@isla.io"

#Node.js
RUN touch .bashrc
RUN echo 'export PATH=$HOME/local/bin:$PATH' >> /.bashrc
RUN . .bashrc
RUN mkdir local
RUN mkdir node-latest-install
RUN cd node-latest-install
RUN apt-get -y install curl
RUN curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
RUN ./configure --prefix=/local
RUN make install
RUN curl https://npmjs.org/install.sh | sh


