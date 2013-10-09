#DOCKER-VERSION 0.3.4
FROM isla/ubuntu-build-tools:python
MAINTAINER Joaquin Garcia "joaquin@isla.io" and Alfonso Fernandez "alfonso@isla.io"
RUN apt-get install -y curl
RUN echo '# Added by install script for node.js and npm in 30s' >> ~/.bashrc; echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc; echo 'export NODE_PATH=$HOME/local/lib/node_modules' >> ~/.bashrc; . ~/.bashrc
RUN mkdir -p ~/local
RUN mkdir -p ~/Downloads/node-latest-install
RUN cd ~/downloads/node-latest-install; curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1;
RUN cd ~/downloads/node-latest-install; ./configure --prefix=~/local; make; make install
