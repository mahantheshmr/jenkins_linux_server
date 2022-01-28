FROM centos

MAINTAINER devopstrainingblr@outlook.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
#RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
ADD  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz .
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-9.0.58/* /opt/tomcat/.
RUN yum -y install java
RUN java -version

RUN sed -i '/<\/tomcat-users>/ i\<role rolename="manager-gui"/>' /opt/tomcat/conf/tomcat-users.xml
RUN sed -i '/<\/tomcat-users>/ i\<role rolename="admin-gui"/>' /opt/tomcat/conf/tomcat-users.xml
RUN sed -i '/<\/tomcat-users>/ i\<user username="admin" password="6242" roles="admin-gui,manager-gui"/>' /opt/tomcat/conf/tomcat-users.xml

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

