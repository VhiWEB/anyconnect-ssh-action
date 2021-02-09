FROM alpine:latest

RUN apk add openconnect openssh-client

ADD entrypoint.sh /entrypoint.sh

HEALTHCHECK --interval=10s --timeout=10s --start-period=10s \

  CMD /sbin/ifconfig tun0

ENTRYPOINT ["/entrypoint.sh"]