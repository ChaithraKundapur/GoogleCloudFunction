# Dockerizing a base images with:
#
#   - Ubuntu 20.04 LTS (Focal Fossa)
#   - OpenJDK 11
#
# Build:    docker build -t exoplatform/jdk:openjdk-11 .
#
# Run:      docker run -ti exoplatform/jdk:openjdk-11 -version


FROM openjdk:8-jre-alpine
RUN mkdir /app
WORKDIR /app
COPY . /app
# RUN mvn clean install


# Base Alpine Linux based image with OpenJDK JRE only
# FROM openjdk:8-jre-alpine
# copy application WAR (with libraries inside)
# COPY target/spring-boot-*.war /app.war
# specify default command
# CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/app.war"]
# FROM openjdk:8-jre-alpine
# COPY build/libs/*.jar /app.jar
