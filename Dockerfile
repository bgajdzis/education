FROM andrewosh/binder-base

MAINTAINER Bartlomiej Gajdzis <bartlomiej.gajdzis@gmail.com>

USER root

# Add Python & Qt dependencies
RUN apt-get update
RUN apt-get install -y libqt4-core libqt4-gui qt4-qmake libqt4-dev qt4-dev-tools qt4-default python-qt4 python3-pyqt4 python-tk python-pyside python3-matplotlib

USER main
