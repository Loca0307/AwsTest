# Imports java 21 from temurin
FROM eclipse-temurin:21

# Define the work directory inside the container file system
WORKDIR /app

# As springboot already fully created the project as .jar we can just copy that
COPY build/libs/AwsTest-0.0.1-SNAPSHOT.jar /app/AwsTest.jar

# Starting command for the container, here "java -jar AwsTest.jar"
ENTRYPOINT ["java","-jar","AwsTest.jar"]