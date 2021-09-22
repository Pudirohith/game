FROM openjdk:8-jdk
ARG JAR_FILE=target/gameoflife-build-1.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java", "-Djava.security.edg=file:/dev/./urandom","-war","/app.war"]
