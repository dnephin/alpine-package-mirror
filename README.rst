
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


To run the mirror, provide the package directory tree as a volume from the host, or
another container. In this example the host directory `./repo` contains the
packages:

    docker run -ti \
        -v $PWD/repo:/var/www/localhost/htdocs/alpine/ \
        alpine-package-mirror:$USER


To run the mirror with a companion container which takes care of pulling updates
with rsync, you can use the provided ``docker-compose.yml``:

    BUILD_ID=latest make build build_repo
    docker-compose up -d
