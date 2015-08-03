#
# Run lighttpd to serve apk packages
#
FROM    alpine:3.2
MAINTAINER  Daniel Nephin <dnephin@gmail.com>

RUN     apk update && apk add lighttpd
ADD     lighttpd.conf /etc/lighttpd/lighttpd.conf
CMD     ["lighttpd", "-f", "/etc/lighttpd/lighttpd.conf", "-D"]
EXPOSE  80
