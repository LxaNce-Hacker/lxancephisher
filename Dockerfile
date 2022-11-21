FROM alpine:latest
LABEL MAINTAINER="https://github.com/LxaNce-Hacker/lxancephisher"
WORKDIR /lxancephisher/
ADD . /lxancephisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./lxancephisher.sh"
