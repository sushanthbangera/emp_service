FROM maven:3.5-jdk-8 AS build
<<<<<<< HEAD
COPY src /usr/glarimy_employee/src
COPY pom.xml /usr/glarimy_employee
RUN mvn -f /usr/glarimy_employee/pom.xml clean package
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.datasource.url=jdbc:mysql://mysqldb:27017/glarimy?useSSL=false&allowPublicKeyRetrieval=true","-jar","/usr/glarimy_employee/target/quiz-employee-service-0.0.1-SNAPSHOT.jar"]
=======
COPY src /usr/quiz-employee-service/src
COPY pom.xml /usr/quiz-employee-service
RUN mvn -f /usr/quiz-employee-service/pom.xml clean package
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.data.mongodb.uri=mongodb://mongodb:27017/glarimy", "-jar","/usr/quiz-employee-service/target/quiz-employee-service-1.0.0.jar"]
>>>>>>> 4ee989216bfd6245db6de6718ea32204964014fc
