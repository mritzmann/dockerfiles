FROM debian:10

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8

RUN apt-get update \
  && apt-get install -y deluged deluge-web

# deluge-web
EXPOSE 8112

CMD /usr/bin/deluged && /usr/bin/deluge-web
