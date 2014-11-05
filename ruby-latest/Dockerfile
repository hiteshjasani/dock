FROM ubuntu
MAINTAINER Hitesh Jasani <hitesh.jasani@gmail.com>

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    gcc git make libc-dev libssl-dev ca-certificates \
    ruby1.9.3 ruby2.0 ruby2.0-dev && \
    cd /usr/bin && rm ruby && ln -s ruby2.0 ruby


VOLUME ["/code"]
WORKDIR /code


