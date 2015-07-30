#!/bin/sh

set -eu

# make sure we never run 2 rsync at the same time
lockfile="/tmp/alpine-mirror.lock"
if [ -z "$flock" ] ; then
  exec env flock=1 flock -n $lockfile $0 "$@"
fi

src=rsync://rsync.alpinelinux.org/alpine/ 
dest=/var/www/localhost/htdocs/alpine/

/usr/bin/rsync -prua \
        --exclude "v2.[1-9]" \
        --exclude "v3.0" \
        --exclude "v3.1" \
        --delete \
        --timeout=120 \
        --delay-updates \
        --delete-after \
        "$src" "$dest"
