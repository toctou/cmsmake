FROM ubuntu:14.04
MAINTAINER Algorithm Ninja <algorithm@ninja>

ARG NO_PASCAL=0

RUN apt-get update

# Dependencies
RUN apt-get -y install python2.7 python-dev python-numpy libffi-dev libcups2-dev libpq-dev

# Compilers (for supported languages)
RUN apt-get -y install g++
RUN if test "$NO_PASCAL" = '0'; then apt-get -y install fpc; fi

# Tools
RUN apt-get -y install git python-pip

# Prepare for CMS
RUN git clone --recursive https://github.com/cms-dev/cms.git /cms && cd /cms && pip install -r requirements.txt && ./prerequisites.py install --as-root --no-conf -y && python setup.py install

CMD mkdir /tasks

WORKDIR /tasks

CMD bash
