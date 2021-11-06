FROM adoptopenjdk:8-jre-hotspot

COPY target/pingservice-0.0.1-SNAPSHOT.jar app.war

EXPOSE 8080

ENTRYPOINT ["java", "-jar","/app.war"]
