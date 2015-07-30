
Alpine Linux Package Mirror - Docker Image
==========================================

A Dockerfile which builds an alpine linux package mirror server. It may also
be used to host a private package repo for packages that aren't part of the core
distribution.


Based on http://wiki.alpinelinux.org/wiki/How_to_setup_a_Alpine_Linux_mirror
To configure alpine to use your new package mirror see
http://wiki.alpinelinux.org/wiki/Include:Using_Internet_Repositories_for_apk-tools


To build the image:

    make build


To run a private package registry add your packages to
``/var/www/localhost/htdocs/alpine/``.
