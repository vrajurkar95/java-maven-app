FROM tomcat:9.0

# Clean default webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file as ROOT.war for root context
COPY target/maven-cloudaseem-app.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]



# Use a specific version of Tomcat as base image
# FROM tomcat:9.0

# Expose port 8080 to access the application
# EXPOSE 8080

# Copy the WAR file from the target directory of your Maven project to the Tomcat webapps directory
# COPY target/maven-cloudaseem-app.war /usr/local/tomcat/webapps/
# COPY target/*.war /usr/local/tomcat/webapps/
