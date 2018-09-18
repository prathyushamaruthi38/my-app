FROM tomcat:8
# Take the war and copy to webapps of tomcat8
COPY target/*.war /usr/local/tomcat/webapps/
