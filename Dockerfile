FROM gradle:6.0.1-jdk as builder
COPY --chown=gradle:gradle . /home/gradle/webapp
WORKDIR /home/gradle/webapp
RUN gradle clean test bootJar

FROM adoptopenjdk:11.0.5_10-jre-hotspot
COPY --from=builder /home/gradle/webapp/build/libs/application.jar application.jar

ENTRYPOINT ["java", "-jar", "application.jar"]