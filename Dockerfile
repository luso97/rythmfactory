FROM gradle:6.9.2-jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
ADD build.gradle.kts settings.gradle.kts /home/gradle/
COPY /src /home/gradle/src/
WORKDIR /home/gradle/src
RUN gradle clean build --no-daemon
RUN gradle test

FROM openjdk:11
COPY --from=build /home/gradle/src/build/libs/rythmfactory-0.0.1-SNAPSHOT.jar rythmfactory.jar
ENTRYPOINT ["java", "-jar", "rythmfactory.jar"]