FROM ubuntu
MAINTAINER pudirohith
RUN mkdir /usr/app
WORKDIR /usr/app
RUN cd /.m2/repository/com/wakaleo/gameoflife/gameoflife-web/1.0-SNAPSHOT/
COPY gameoflife-web-1.0-SNAPSHOT.war /usr/app
