FROM	tomcat:10-jre
COPY	target/hello-world.war /usr/local/tomcat/webapps
