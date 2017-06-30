FROM andrewosh/binder-base

MAINTAINER Bartlomiej Gajdzis <bartlomiej.gajdzis@gmail.com>

USER root

# Add Python & Qt dependencies
RUN apt-get update
RUN apt-get install -y libav-tools python3-matplotlib python3-pyqt5 python-gtk2 python-wxtools locales

# Set Polish locale
RUN echo "pl_PL.ISO-8859-2 ISO-8859-2" > /etc/locale.gen && \
    locale-gen en_US.ISO-8859-2 && \
    dpkg-reconfigure locales && \
    /usr/sbin/update-locale LANG=pl_PL.ISO-8859-2

ENV LC_ALL pl_PL.UTF-8

USER main
