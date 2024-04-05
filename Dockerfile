FROM bellsoft/liberica-openjdk-alpine:17

WORKDIR /app

COPY services-1.1.jar /app/services-1.1.jar

EXPOSE 8585

CMD ["java", "-jar", "/app/services-1.1.jar"]
