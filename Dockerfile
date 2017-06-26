FROM andrewosh/binder-base

MAINTAINER Bartlomiej Gajdzis <bartlomiej.gajdzis@gmail.com>

USER root

# Add Python & Qt dependencies
RUN apt-get update
RUN apt-get install -y ffmpeg python3-matplotlib

USER main
