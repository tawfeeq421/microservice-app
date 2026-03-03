FROM maven:3.9.6-eclipse-temurin-17 AS builder_api
WORKDIR /usr/src/app
COPY . .
RUN mvn clean package -DskipTests

FROM eclipse-temurin:8-jdk-alpine

WORKDIR /usr/src/app

COPY --from=builder_api /usr/src/app/target/book-work-0.0.1-SNAPSHOT.jar ./book-work-0.0.1.jar

EXPOSE 9000
ENTRYPOINT ["java","-jar","book-work-0.0.1.jar"]
