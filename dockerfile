FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV USER root

RUN apt-get update -y
RUN apt-get -y install python3.6-dev python3.6-venv
CMD ["script/install-deps-ubuntu.sh"]
RUN mkdir build
RUN cd build
