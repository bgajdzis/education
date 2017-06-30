FROM andrewosh/binder-base

MAINTAINER Bartlomiej Gajdzis <bartlomiej.gajdzis@gmail.com>

USER root

# Set Polish locale
COPY locale /etc/default/locale
RUN locale-gen pl_PL.UTF-8 &&\
  DEBIAN_FRONTEND=noninteractive dpkg-reconfigure locales

# Add Python & Qt dependencies
RUN apt-get update
RUN apt-get install -y libav-tools python3-matplotlib python3-pyqt5 python-gtk2 python-wxtools

USER main
