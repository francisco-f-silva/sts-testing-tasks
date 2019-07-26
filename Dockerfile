FROM openjdk:8
WORKDIR /app  
COPY build/libs /app  
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "gs-rest-service-0.1.0.jar"]  