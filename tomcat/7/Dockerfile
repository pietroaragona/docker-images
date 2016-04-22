FROM pietroaragona/java7-ubuntu
MAINTAINER Pietro Aragona <pietroaragona@gmail.com>

# Update Ubuntu
RUN apt-get update && apt-get -y upgrade \
# Install tomcat
  && apt-get -y install tomcat7 \
  && echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle">> /etc/default/tomcat7

ADD start-tomcat.sh /root/start-tomcat.sh
RUN chmod +x /root/start-tomcat.sh

EXPOSE 8080
CMD ["/root/start-tomcat.sh"]
