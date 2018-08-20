FROM alpine:3.8

RUN apk --update add --no-cache pgpool=3.7.4-r0

RUN mkdir /var/run/pgpool/ && mkdir /var/log/pgpool/

CMD ["/usr/bin/pgpool", "-n"]