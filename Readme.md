# A Docker image for doing Flutter stuff

[![Build Branches](https://github.com/fischerscode/DockerFlutter/actions/workflows/build_updates.yaml/badge.svg)](https://github.com/fischerscode/DockerFlutter/actions/workflows/build_updates.yaml)
[![docker pulls](https://img.shields.io/docker/pulls/fischerscode/flutter)](https://hub.docker.com/r/fischerscode/flutter)
[![docker pulls sudo image](https://img.shields.io/docker/pulls/fischerscode/flutter-sudo)](https://hub.docker.com/r/fischerscode/flutter-sudo)

This repository builds ubuntu based docker images containing the flutter executable.
- [fischerscode/flutter](https://hub.docker.com/r/fischerscode/flutter): The recommended image.
- [fischerscode/flutter-sudo](https://hub.docker.com/r/fischerscode/flutter-sudo): The user flutter is allowed to run sudo.

One use case for this image is the build of Flutter Web Applications.

## Tags
Currently every new branch and new tag of the [flutter repo](https://github.com/flutter/flutter) gets build.

Additionally at least every hour the 20 most recently updated branches are build.

The every image in the [stable branch](https://github.com/flutter/flutter/tree/stable) is additionally uploaded with the latest tag.

Most important should be this tags:

|  tag   |       description        |
| :----: | :----------------------: |
| latest | Flutters stable channel. |
| stable | Flutters stable channel. |
|  beta  |  Flutters beta channel.  |
| master | Flutters master channel. |