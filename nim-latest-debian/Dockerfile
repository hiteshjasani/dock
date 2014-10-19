FROM debian
MAINTAINER Hitesh Jasani <hitesh.jasani@gmail.com>

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    gcc git make libc-dev && \
  cd /usr/local/src && \
  git clone -b master git://github.com/Araq/Nimrod.git && \
  cd Nimrod && \
  git clone --depth 1 git://github.com/nimrod-code/csources && \
  cd csources && \
  sh build.sh && \
  cd .. && \
  bin/nimrod c koch && \
  ./koch boot -d:release && \
  cd /usr/local/bin && \
  ln -s /usr/local/src/Nimrod/bin/nimrod . && \
  cd /usr/local/src/Nimrod && \
  rm -r csources && \
  rm -rf .git

VOLUME ["/code"]
WORKDIR /code


