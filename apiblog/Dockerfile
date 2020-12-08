FROM maven:3.6.1-jdk-8-slim AS build

RUN mkdir -p /workspace
WORKDIR /workspace

COPY pom.xml /workspace
COPY src /workspace/src

RUN mvn -f pom.xml clean package -DskipTests=true

FROM openjdk:8-alpine

COPY --from=build /workspace/target/*.war app.war

EXPOSE 8090

ENTRYPOINT ["java","-jar","app.war"]