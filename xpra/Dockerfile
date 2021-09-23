FROM --platform=linux/amd64 debian:10

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8

# install dependencies
# - ca-certificates: necessary for wget to validate https urls
# - gnupg2: necessary for apt-key
RUN apt-get update \
  && apt-get install --yes --no-install-recommends ca-certificates wget gnupg2 xvfb python-uinput websockify python-netifaces dbus-x11 xdg-utils \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# install xpra
RUN wget -q https://xpra.org/gpg.asc -O- | apt-key add - \
  && wget https://xpra.org/repos/buster/xpra.list -O /etc/apt/sources.list.d/xpra.list \
  && apt-get update \
  && apt-get install --yes --no-install-recommends xpra \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# install programs you want to use
RUN apt-get update \
  && apt-get install --yes thunderbird \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# add non-root user
RUN groupadd --system --gid 1000 app \
  && useradd --create-home --uid 1000 --gid 1000 --shell /bin/bash app

ENV DISPLAY=:100
USER app
EXPOSE 10000

CMD xpra start --bind-tcp=0.0.0.0:10000 --html=on --start=thunderbird --daemon=no --xvfb="/usr/bin/Xvfb +extension Composite -screen 0 1920x1080x24+32 -nolisten tcp -noreset" --pulseaudio=no --notifications=no --bell=no --forward-xdg-open=on
