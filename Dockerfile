FROM andrewosh/binder-base

MAINTAINER Bartlomiej Gajdzis <bartlomiej.gajdzis@gmail.com>

USER root

# Add Python & Qt dependencies
RUN apt-get update
RUN apt-get install -y libqt5-core libqt5-gui qt5-qmake libqt5-dev qt5-dev-tools python3-pip && apt-get clean
RUN pip3 install pyqt5 matplotlib

USER main
