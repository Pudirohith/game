FROM ubuntu
MAINTAINER pudirohith
RUN mkdir /usr/app
WORKDIR /usr/app
COPY /workspace/gameoflife-web/target/gameoflife.war /usr/app
