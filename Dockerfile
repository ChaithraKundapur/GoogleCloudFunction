# Dockerizing a base images with:
#
#   - Ubuntu 20.04 LTS (Focal Fossa)
#   - OpenJDK 11
#
# Build:    docker build -t exoplatform/jdk:openjdk-11 .
#
# Run:      docker run -ti exoplatform/jdk:openjdk-11 -version


# FROM maven:3.8.7-openjdk-18-slim
# RUN mkdir /app
# WORKDIR /app
# COPY . /app
# RUN mvn clean install
# CMD "mvn" "exec:java"

# Base Alpine Linux based image with OpenJDK JRE only
FROM openjdk:8-jre-alpine
# copy application WAR (with libraries inside)
COPY target/spring-boot-*.war /app.war
# specify default command
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/app.war"]
