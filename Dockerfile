FROM maven:3.9.8-eclipse-temurin-21 AS builder

WORKDIR /app

COPY . .

RUN chmod +x mvnw
RUN mvn clean package -DskipTests

# 2nd stage
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app 

# get app name from pom.xml artifactId
COPY --from=builder /app/target/*.jar bankapp.jar

EXPOSE 8080

CMD ["java", "-jar", "bankapp.jar"]

# CMD ["sh", "-c", "while true; do sleep 1000; done"]