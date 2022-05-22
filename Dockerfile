FROM debian:latest
LABEL MAINTAINER="https://github.com/LxaNce-Hacker/LxPhisher"

WORKDIR /lxphisher/
ADD . /lxphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./lxphisher.sh"]
