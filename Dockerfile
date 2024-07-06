# Use an official Tomcat runtime as a parent image
FROM tomcat:9.0-jdk11-openjdk

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file to the Tomcat webapps directory
COPY target/vish-app.war ./ROOT.war

# Expose port 8080 to the outside world
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]