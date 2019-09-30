FROM ubuntu:18.04
MAINTAINER Lazar Demin (lazar@onion.io)

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    vim \
    git \
    wget \
    rsync \
    curl \
    time \
    subversion \
    build-essential \
    libncurses5-dev \
    zlib1g-dev \
    gawk \
    flex \
    quilt \
    git-core \
    unzip \
    libssl-dev \
    python-dev \
    python-pip \
    libxml-parser-perl \
    default-jdk

ENV FORCE_UNSAFE_CONFIGURE 1

COPY . /root/source
WORKDIR /root/source

RUN echo $(ls -al /root/source)
RUN chmod +x /root/source/run.sh

ENTRYPOINT ["/root/source/run.sh"]
