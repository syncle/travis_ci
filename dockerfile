FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV USER root

RUN apt-get update -y
RUN apt-get -y install python3.6
RUN python -V
CMD ["script/install-deps-ubuntu.sh"]
RUN pwd
RUN mkdir build
RUN cd build
RUN pwd
