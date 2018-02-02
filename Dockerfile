FROM debian:jessie
MAINTAINER SSE4 <tomskside@gmail.com>

ENV DEBIAN_FRONEND=noninteractive
ARG DEBIAN_FRONEND=noninteractive

#RUN dpkg --add-architecture i386 && \
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    build-essential \
    g++-multilib \
    xz-utils \
    libgmp-dev \
    libmpfr-dev \
    libmpc-dev \
    libisl-dev

COPY build-gcc.sh /build-gcc.sh
RUN chmod +x /build-gcc.sh
