# GIFSICLE insert into blank Debian to minimze image size

FROM debian:wheezy
MAINTAINER Nachochip <hans@starefossen.com>


ADD   build/gifsicle.tar.gz   /usr/local/bin/


CMD           ["--help"]
ENTRYPOINT    ["gifsicle"]
