FROM alpine:edge
MAINTAINER Pablo Guerino <pablo.guerino@jadelabs.net>

RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community add beanstalkd

USER beanstalk

EXPOSE 11300

CMD ["/usr/bin/beanstalkd"]