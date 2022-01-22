FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN java -version
RUN mkdir /usr/local/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz -O /opt/apache-tomcat-9.0.58.tar.gz
RUN cd /opt && tar xvfz apache-tomcat-9.0.58.tar.gz
RUN mv /opt/apache-tomcat-9.0.58 /opt/tomcat/
EXPOSE 9090
#CMD /opt/tomcat/bin/startup.sh run
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
