# Use the official Tomcat base image
FROM tomcat:10-jre11-temurin

# Copy the WAR file to the webapps directory of Tomcat
# Replace 'your-app.war' with the name of your WAR file
COPY ./target/students.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
