FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY target/spring-boot-devops-demo.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

