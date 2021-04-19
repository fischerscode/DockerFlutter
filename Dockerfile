FROM ubuntu:20.04

RUN apt-get update

RUN apt-get install -y bash curl file git unzip xz-utils zip libglu1-mesa
ARG flutterVersion=stable

RUN git clone https://github.com/flutter/flutter.git -b ${flutterVersion} /flutter

RUN /flutter/bin/flutter channel ${flutterVersion}

RUN /flutter/bin/flutter precache

ENV PATH="$PATH:/flutter/bin"
ENV PATH="$PATH:/flutter/bin/cache/dart-sdk/bin"

RUN flutter doctor