docker-node.js
==============

Dockerfile for booting up a container with Node.js 0.10.20 (Based on https://index.docker.io/u/isla/ubuntu-build-tools/)

## Usage 
```
	docker run -v `pwd`/app:/home -p 4002:3000 -u="nodejs" -w="/home" -d isla/nodejs /local/bin/node app/
```
