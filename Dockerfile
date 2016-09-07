FROM centos:7.0
MAINTAINER river

WORKDIR /usr
RUN \
  apk --update add bash  curl  nano tar wget && \
  rm -rf /var/cache/apk/*
ENV JEXUS_VERSION 5.8.1
RUN wget http://linuxdot.net/down/jexus-${JEXUS_VERSION}-x64.tar.gz
RUN tar -zxvf jexus-5.8.1-x64.tar.gz
RUN rm -rf jexus-5.8.1-x64.tar.gz
EXPOSE 80
CMD /usr/jexus/jws start && tail -f /etc/hosts
