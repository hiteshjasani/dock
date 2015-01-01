FROM debian
MAINTAINER Hitesh Jasani <hitesh.jasani@gmail.com>

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    gcc git make libc-dev libssl-dev ca-certificates && \
  cd /usr/local/src && \
  git clone -b master git://github.com/Araq/Nimrod.git && \
  cd Nimrod && \
  git clone --depth 1 git://github.com/nimrod-code/csources && \
  cd csources && \
  git checkout master
WORKDIR /usr/local/src/Nimrod/csources
RUN \
  sh build.sh
WORKDIR ..
RUN \
  bin/nim c koch
RUN \
  ./koch boot -d:release && \
  cd /usr/local/bin && \
  ln -s /usr/local/src/Nimrod/bin/nim . && \
  cd /usr/local/src/Nimrod && \
  rm -r csources && \
  rm -rf .git && \
  cd /usr/local/src && \
  git clone https://github.com/nimrod-code/nimble.git && \
  cd nimble && \
  nim c -r src/nimble install && \
  ~/.nimble/bin/nimble update

RUN echo export PATH="$PATH:$HOME/.nimble/bin" >> ~/.profile

VOLUME ["/code"]
WORKDIR /code


