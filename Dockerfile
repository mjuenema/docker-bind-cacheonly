FROM alpine:latest

MAINTAINER markus@juenemann.net

RUN apk update && \
    apk upgrade && \
    apk add bind 

ADD named.conf /etc/bind/named.conf

ENTRYPOINT ["/usr/sbin/named","-u","named","-g"]
