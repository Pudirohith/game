FROM ubuntu
MAINTAINER pudirohith
RUN mkdir /usr/app
WORKDIR /usr/app
COPY /workspace/build/libs/gameoflife.war /usr/app
