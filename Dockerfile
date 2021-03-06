FROM ubuntu:14.04
MAINTAINER Ryan Ratcliff <ryan.ratcliff@ryanratcliff.net>
ENV refreshed_at 2014-11-26

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/10gen.list

RUN apt-get update && apt-get install -y mongodb-org
RUN mkdir -p /data/db

VOLUME ["/data/db"]
EXPOSE 27017
ENTRYPOINT ["/usr/bin/mongod"]
