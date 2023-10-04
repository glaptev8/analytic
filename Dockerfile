FROM openjdk:17-jdk-slim-buster
WORKDIR /analytic

COPY build/libs/analytic-*-SNAPSHOT.jar /analytic/build/

WORKDIR /analytic/build

RUN mkdir /Users/laptev_8/Downloads/elasticsearch-8.10.2/logs

EXPOSE 8080

ENTRYPOINT java -jar analytic-*-SNAPSHOT.jar