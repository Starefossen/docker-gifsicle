# GIFSICLE insert into blank Debian to minimze image size

FROM debian:wheezy
MAINTAINER Hans Kristian Flaatten <hans@starefossen.com>


ADD   gifsicle.tar.gz   /usr/local/bin/


CMD           ["--help"]
ENTRYPOINT    ["gifsicle"]
