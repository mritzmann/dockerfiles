FROM debian:10
MAINTAINER Ops One AG <team@opsone.ch>

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8

RUN apt-get update
RUN apt-get install --yes git librrds-perl libjson-perl libhtml-parser-perl python libcgi-pm-perl perl-modules-5.28
RUN mkdir  /etc/collectd
RUN echo 'datadir: "/tmp/rrd"' > /etc/collectd/collection.conf
RUN git clone https://github.com/httpdss/collectd-web.git /usr/local/collectd-web/

WORKDIR /usr/local/collectd-web/

EXPOSE 80

CMD ["ip", "addr", "show", "eth0"]
CMD ["python", "runserver.py", "0.0.0.0", "80"]
