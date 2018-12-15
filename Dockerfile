FROM maven:3.6.0-jdk-11-slim as builder
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

FROM adoptopenjdk/openjdk11:alpine-slim as target
COPY --from=builder /tmp/target/*.jar /app/app.jar
CMD java -jar -XX:+UseContainerSupport /app/app.jar