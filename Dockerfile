FROM 6.9.2-jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle clean build --no-daemon

FROM openjdk:15
ADD /build/libs/rythmfactory-0.0.1-SNAPSHOT.jar rythmfactory.jar
ENTRYPOINT ["java", "-jar", "rythmfactory.jar"]