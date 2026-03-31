# Stage 1: build the WAR
FROM maven:3.9.2-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Stage 2: deploy to Tomcat
FROM tomcat:9-jdk17
COPY --from=build /app/target/ROOT.war /usr/local/tomcat/webapps/ROOT.war
