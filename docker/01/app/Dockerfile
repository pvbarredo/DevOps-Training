FROM adoptopenjdk:8-jre-hotspot

LABEL maintainer="peter.emmanuel.barredo@oocl.com"

COPY target/spring-ujs-sjr.war app.war

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "/app.war" ]

