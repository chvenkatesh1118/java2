FROM tomcat:8
COPY *.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "start"]