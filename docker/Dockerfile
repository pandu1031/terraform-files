FROM Centos
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN yum install wget -y
RUN wget https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar xvfz apache-tomcat-8.5.40.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java-1.8.0-openjdk-devel-y
RUN java -version
EXPOSE 8080
CMD [ "/opt/tomcat/bin/catalina.sh", "run" ]
