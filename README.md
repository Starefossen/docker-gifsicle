# Docker Gifsicle

The `starefossen/gifsicle` Image provides a Docker Image for
[Gifsicle](http://www.lcdf.org/gifsicle/) - create, manipulate, and optimize GIF
images and animations.

![Demo using Gifsicle on Docker](/assets/demo.gif)

## Supported tags and respective `Dockerfile` links

* [`latest` (Dockerfile)](https://github.com/Starefossen/docker-gifsicle/blob/master/Dockerfile)
* [`ffmpeg` (Dockerfile)](https://github.com/Starefossen/docker-gifsicle/blob/master/ffmpeg/Dockerfile)
* [`1.88` (Dockerfile)](https://github.com/Starefossen/docker-gifsicle/blob/v1.88/Dockerfile)

## What is Gifsicle

Gifsicle is a command-line tool for creating, editing, and getting information
about GIF images and animations.

## How to use this image

This image is used identically to the official Gifsicle cli. Just mount the
directories where you want to store your GIFs as volumes and you are good to go.

```
$ docker run --rm -v "$PWD":/src starefossen/gifsicle --help
```

## Image Variants

The `starefossen/gifsicle` images come in three flavors, each designed for a
specific use case in mind.

`starefossen/gifsicle:latest`

This is the bleeding edge latest version of the image. You should use this under
active development, but not for stable production usage.

`starefossen/gifsicle:<version>`

This is the locked down version of the image. If comes in two variants;
`:<major>` and `:<major>.<minor>` versions of Gifsicle.

`starefossen/gifsicle:ffmpeg`

This is a image with latest version of ffmpeg installed. This is based on the
[nachochip/ffmpeg](https://github.com/nachochip/ffmpeg) Docker Image.

## License

This Docker image is licensed under the [MIT License](https://github.com/Starefossen/docker-gifsicle/blob/master/LICENSE).

Software contained in this image is licensed under the following:

* Gifsicle: [GNU GPL v2](https://github.com/kohler/gifsicle/blob/master/COPYING)
* FFmpeg: [GNU LGPL v2.1](https://github.com/FFmpeg/FFmpeg/blob/master/LICENSE.md)

## Supported Docker versions

This image is officially supported on Docker version 1.8.1.

Support for older versions (down to 1.0) is provided on a best-effort basis.

## User Feedback

### Documentation

* [Docker](http://docs.docker.com)
* [Gifsicle](http://www.lcdf.org/gifsicle/)
* [FFmpeg](http://ffmpeg.org/documentation.html)

### Issues

If you have any problems with or questions about this image, please contact us
through a [GitHub issue](https://github.com/Starefossen/docker-gifsicle/issues).

### Contributing

You are invited to contribute new features, fixes, or updates, large or small;
we are always thrilled to receive pull requests, and do our best to process them
as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub
issue](https://github.com/Starefossen/docker-gifsicle/issues), especially
for more ambitious contributions. This gives other contributors a chance to
point you in the right direction, give you feedback on your design, and help
you find out if someone else is working on the same thing.

## Build

Building new versions of the Gifsicle binary for the image is done using the
[`/build` container](/build/Dockerfile) in this repository. The
[`build.sh`](/build.sh) script does most of the heavy lifting for this process.

You need [Docker Compose](https://github.com/docker/compose) installed for the
build script to work correctly.

```
$ ./build x.yy
```

### Release

Releasing new versions Docker Hub is a matter for adding the newly generated
`gifsicle.tar.tz` archives and adding the version tag to Docker Hub.
