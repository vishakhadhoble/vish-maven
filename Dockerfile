# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/vish-app.jar /app/vish-app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "vish-app.jar"]