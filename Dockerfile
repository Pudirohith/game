FROM ubuntu
MAINTAINER pudirohith
RUN mkdir /usr/app
WORKDIR /usr/app
COPY /varlib/jenkins/workspace/gameoflife-web/target/gameoflife.war /usr/app
