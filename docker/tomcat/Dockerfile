FROM ubuntu
MAINTAINER mahantheshmr.in@gmail.com
RUN apt-get update
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN apt install curl -y
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.56/* /opt/tomcat/.
# Install Java 8
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install default-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

EXPOSE 9090

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

