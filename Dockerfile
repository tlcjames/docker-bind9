FROM alpine:3.10

MAINTAINER JamesM <james.mackley@tlc-direct.co.uk>

RUN apk --update add bind

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
