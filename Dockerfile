FROM openjdk:8-jdk
ARG JAR_FILE=target/gameoflife.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java", "-Djava.security.edg=file:/dev/./urandom","-war","/app.war"]

