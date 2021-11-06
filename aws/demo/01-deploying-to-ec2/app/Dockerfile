FROM adoptopenjdk:8-jre-hotspot

COPY target/spring-ujs-sjr.war app.war

EXPOSE 8080

ENTRYPOINT ["java", "-jar","/app.war"]
