FROM ubuntu:trusty

MAINTAINER John McKenzie <jmckind@gmail.com>

RUN apt-get update
RUN apt-get install -y keystone

CMD ["keystone-all", "--debug"]

EXPOSE 5000 35357
