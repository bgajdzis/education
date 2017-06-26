FROM andrewosh/binder-base

MAINTAINER Bartłomiej Gajdzis <bartlomiej.gajdzis@gmail.com>

USER root

# Add dependency
RUN apt-get update
RUN apt-get install -y qt4-qmake libqt4-dev

USER main

# Install requirements for Python 3
RUN /home/main/anaconda/envs/python3/bin/pip install matplotlib
