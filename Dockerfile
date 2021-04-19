FROM --platform=$BUILDPLATFORM ubuntu:20.04

RUN apt-get update

RUN apt-get install -y bash curl file git unzip xz-utils zip libglu1-mesa

ARG flutterVersion=stable

ADD https://api.github.com/repos/flutter/flutter/compare/${flutterVersion}...${flutterVersion} /dev/null

RUN git clone https://github.com/flutter/flutter.git -b ${flutterVersion} /flutter --depth 1 

RUN /flutter/bin/flutter precache

ENV PATH="$PATH:/flutter/bin"
ENV PATH="$PATH:/flutter/bin/cache/dart-sdk/bin"

RUN flutter doctor