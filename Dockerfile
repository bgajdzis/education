FROM andrewosh/binder-base

MAINTAINER Bartlomiej Gajdzis <bartlomiej.gajdzis@gmail.com>

USER root

# Add Python & Qt dependencies
RUN apt-get update
RUN apt-get install -y libav-tools python3-matplotlib python3-pyqt5 python-gtk python-wxgtk3 libgtk-3-dev

USER main
