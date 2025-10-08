# Use official Tomcat base image
FROM tomcat:9.0-jdk21-temurin

# Download PostgreSQL JDBC driver
ADD https://jdbc.postgresql.org/download/postgresql-42.7.3.jar /usr/local/tomcat/lib/

# Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR file to Tomcat
COPY resource.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
