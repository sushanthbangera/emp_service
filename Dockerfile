FROM maven:3.5-jdk-8 AS build
COPY src /usr/quiz-employee-service/src
COPY pom.xml /usr/quiz-employee-service
RUN mvn -f /usr/quiz-employee-service/pom.xml clean package
EXPOSE 8082
ENTRYPOINT ["java","-Dspring.data.mongodb.uri=mongodb://mongodb:27017/glarimy","-jar","/usr/glarimy_question/target/quiz-question-service-0.0.1-SNAPSHOT.jar"]