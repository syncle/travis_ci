FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV USER root

RUN apt-get update -y
RUN python -V
RUN pwd
RUN mkdir build
RUN cd build
RUN pwd
RUN apt-get -y install python3.6
CMD ["script/install-deps-ubuntu.sh"]
