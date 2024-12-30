FROM alpine:latest

RUN apk update && apk add --no-cache wget bash

RUN mkdir -p webp_installer

ENV PROJ="libwebp-1.5.0-linux-x86-64"

RUN cd /webp_installer && \
    wget "https://storage.googleapis.com/downloads.webmproject.org/releases/webp/$PROJ.tar.gz" && \
    tar -xvf "$PROJ.tar.gz"

ENV PATH="$PATH:/webp_installer/$PROJ/bin"

CMD [ "bash" ]
