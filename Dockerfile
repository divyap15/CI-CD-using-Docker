FROM tomcat:latest

LABEL maintainer="Mohan Nithish"

CMD ["./var/jenkins_home/workspace/last/target/LoginWebApp-1.war /usr/local/tomcat/webapps/", "CPY"]

EXPOSE 8080

CMD ["catalina.sh", "run"]
