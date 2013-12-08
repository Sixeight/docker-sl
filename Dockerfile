

FROM ubuntu

RUN echo 'deb http://jp.archive.ubuntu.com/ubuntu precise universe' >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y sl
RUN apt-get clean

RUN adduser --disabled-password conductor

ENV PATH /usr/games:$PATH
USER conductor
CMD sl

