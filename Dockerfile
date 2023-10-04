FROM openjdk:17-jdk-slim-buster
WORKDIR /analytic

COPY build/libs/analytic-*-SNAPSHOT.jar /analytic/build/

WORKDIR /analytic/build

EXPOSE 8080

ENTRYPOINT java -jar analytic-*-SNAPSHOT.jar