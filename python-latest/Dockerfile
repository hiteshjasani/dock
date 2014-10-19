FROM debian
MAINTAINER Hitesh Jasani <hitesh.jasani@gmail.com>

RUN apt-get update
RUN apt-get install -y python wget ca-certificates
WORKDIR /usr/local/src
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py

VOLUME ["/code"]
WORKDIR /code


