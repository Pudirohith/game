FROM openjdk:11-jdk
ARG JAR_FILE=/workspace/gameoflife-web/target/gameoflife.war
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-Djava.security.edg=file:/dev/./urandom","-jar","/app.jar"]
