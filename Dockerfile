FROM ubuntu:trusty

MAINTAINER John McKenzie <jmckind@gmail.com>

RUN apt-get update && apt-get install -y \
    keystone \
&& rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/keystone-all"]
CMD ["--debug"]

EXPOSE 5000 35357
