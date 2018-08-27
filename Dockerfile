FROM alpine:edge

RUN apk add --no-cache pgpool=3.7.5-r0

RUN mkdir /var/run/pgpool/ && mkdir /var/log/pgpool/

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["/usr/bin/pgpool", "-n"]