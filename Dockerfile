FROM alpine:latest

MAINTAINER markus@juenemann.net

RUN apk update && \
    apk upgrade && \
    apk add bind 

ADD named.conf /etc/bind/named.conf

RUN wget -O /var/bind/root.cache  ftp://ftp.internic.net/domain/named.cache

CMD /usr/sbin/named -u named -f
