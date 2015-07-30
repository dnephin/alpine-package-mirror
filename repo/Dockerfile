#
# Run rsync to periodically update package data, and share it as a volume
#
FROM    alpine:3.2
MAINTAINER  Daniel Nephin <dnephin@gmail.com>

RUN     apk update && apk add rsync
RUN     mkdir -p /var/www/localhost/htdocs/alpine

ADD     rsync.sh /etc/periodic/hourly/package-rsync
ADD     exclude.txt /etc/rsync/exclude.txt

VOLUME  /var/www/localhost/htdocs/alpine
CMD     ["crond", "-f", "-d", "6"]
