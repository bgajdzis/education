FROM andrewosh/binder-base

MAINTAINER Bartlomiej Gajdzis <bartlomiej.gajdzis@gmail.com>

USER root

# Add Julia dependencies
RUN apt-get update
RUN apt-get install -y libqt4-core libqt4-gui qt4-qmake libqt4-dev qt4-dev-tools && apt-get clean

USER main
