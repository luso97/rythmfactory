FROM openjdk:11
EXPOSE 8080
ADD /build/libs/rythmfactory.jar rythmfactory.jar
ENTRYPOINT ["java", "-jar", "dockerdemo.jar"]