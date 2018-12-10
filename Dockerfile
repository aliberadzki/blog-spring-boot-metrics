FROM maven:3.6.0-jdk-11-slim as builder

COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/

RUN mvn package


FROM adoptopenjdk/openjdk11:alpine-slim as target
COPY --from=builder /tmp/target/spring-prometheus-demo-0.0.1-SNAPSHOT.jar /app/app.jar
CMD java -jar /app/app.jar