FROM maven:3-eclipse-temurin-8

WORKDIR /app

ADD . .

RUN mvn compile assembly:single

ENTRYPOINT [ "java", "-jar", "/app/target/colchain.jar", "/app/config.json" ]