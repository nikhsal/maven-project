FROM tomcat:8.0

ADD ./webapp/target/*.war /usr/local/tomcat/webapps/

WORKDIR /usr/local/tomcat

EXPOSE 8080

