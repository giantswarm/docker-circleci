FROM alpine:3.6

RUN \
  apk -Uuv add --no-cache --update \
    ca-certificates \
    git \
    jq \
    less \
    openssl
