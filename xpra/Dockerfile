FROM --platform=linux/amd64 debian:10

# install xpra
RUN apt-get update \
  && apt-get install -y wget gnupg2 xvfb python-uinput websockify python-netifaces dbus-x11 \
  && wget -q https://xpra.org/gpg.asc -O- | apt-key add - \
  && wget https://xpra.org/repos/buster/xpra.list -O /etc/apt/sources.list.d/xpra.list \
  && apt-get update \
  && apt-get install -y xpra

# install programs you want to use
RUN apt-get update \
  && apt-get install -y thunderbird

ENV DISPLAY=:100
EXPOSE 10000

CMD xpra start --bind-tcp=0.0.0.0:10000 --html=on --start=thunderbird --daemon=no --xvfb="/usr/bin/Xvfb +extension Composite -screen 0 1920x1080x24+32 -nolisten tcp -noreset" --pulseaudio=no --notifications=no --bell=no
