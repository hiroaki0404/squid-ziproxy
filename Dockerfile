FROM debian:wheezy
MAINTAINER hiroaki0404@gmail.com

# Build
#   docker build -t [name] .
# Run
#   docker run -d -p 3128:3128 [name]

RUN apt-get -y update
RUN apt-get -y install ziproxy squid squid-prefetch patch

ADD ziproxy/ziproxy.conf /etc/ziproxy/
ADD run.sh /tmp/
RUN chmod +x /tmp/run.sh
ADD squid-prefetch/squid-prefetch.diff /tmp/
WORKDIR /usr/sbin
RUN patch < /tmp/squid-prefetch.diff
ADD squid/squid.conf /etc/squid/
RUN mkdir -p /var/log/ziproxy

CMD /tmp/run.sh

