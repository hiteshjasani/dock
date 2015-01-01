FROM ubuntu
MAINTAINER Hitesh Jasani <hitesh.jasani@gmail.com>

RUN apt-get update
RUN apt-get install -y gcc git make

WORKDIR /usr/local/src
RUN git clone -b master git://github.com/Araq/Nimrod.git
WORKDIR Nimrod
RUN git clone --depth 1 git://github.com/nimrod-code/csources
WORKDIR csources
RUN sh build.sh
WORKDIR ..
RUN bin/nim c koch
RUN ./koch boot -d:release
WORKDIR /usr/local/bin
RUN ln -s /usr/local/src/Nimrod/bin/nim .

WORKDIR /usr/local/src/Nimrod
RUN rm -r csources

VOLUME ["/code"]
WORKDIR /code


