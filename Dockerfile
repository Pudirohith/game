FROM ubuntu
MAINTAINER pudirohith
RUN mkdir /usr/app
WORKDIR /usr/app
COPY /gameoflife-web/1.0-SNAPSHOT/gameoflife-web-1.0-SNAPSHOT.war /usr/app
