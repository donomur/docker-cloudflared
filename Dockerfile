FROM alpine
LABEL MAINTAINER https://github.com/donomur

RUN apk add --no-cache curl libc6-compat && \
      curl -s https://bin.equinox.io/c/VdrWdbjqyF/cloudflared-stable-linux-amd64.tgz | tar xz -C /

ENTRYPOINT ["/cloudflared"]

