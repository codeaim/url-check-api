FROM java:8
ADD build/libs/url-check-api-0.0.1.jar app.jar
ADD application.properties application.properties
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]