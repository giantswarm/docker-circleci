FROM alpine:3.6

RUN \
  apk -Uuv add --no-cache --update \
    ca-certificates \
    git \
    jq \
    less \
    openssl

ENV DOCKER_VER=17.03.0-ce

RUN wget https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VER.tgz && \
  tar xzfv ./docker-$DOCKER_VER.tgz && \
  mv ./docker/* /usr/bin && \
  rm -rf ./docker*
