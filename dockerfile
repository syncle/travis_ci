FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV USER root

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install build-essential libssl-dev libffi-dev python-dev
RUN python -V

RUN git clone https://github.com/syncle/travis_ci.git
RUN cd syncle/travis_ci/
RUN pwd
RUN apt-get -y install python3.6
CMD ["script/install-deps-ubuntu.sh"]
