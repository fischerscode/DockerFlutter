FROM ubuntu:20.04

RUN apt-get update

RUN apt-get install -y bash curl file git unzip xz-utils zip libglu1-mesa

COPY flutter /flutter

RUN /flutter/bin/flutter precache

ENV PATH="$PATH:/flutter/bin"
ENV PATH="$PATH:/flutter/bin/cache/dart-sdk/bin"

RUN flutter doctor