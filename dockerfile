FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get ./scripts/install-deps-ubuntu.sh
