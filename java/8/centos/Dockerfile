FROM centos:7
MAINTAINER Pietro Aragona <pietroaragona@gmail.com>

ENV JAVA_HOME=/usr/java/latest \
    JAVA_VERSION=8u101 \
    BUILD_VERSION=b13 
#8u112


# Upgrading system
RUN yum -y upgrade && \
	yum -y install wget && \

# Downloading Java
	wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VERSION-$BUILD_VERSION/jdk-$JAVA_VERSION-linux-x64.rpm" -O /tmp/jdk-8-linux-x64.rpm && \

# Install java
	yum -y install /tmp/jdk-8-linux-x64.rpm && \
	rm /tmp/jdk-8-linux-x64.rpm && \

# Clean
	yum clean all && rm -rf /var/cache/dnf/* && \

    alternatives --install /usr/bin/java java /usr/java/latest/bin/java 200000 && \
    alternatives --install /usr/bin/javaws javaws /usr/java/latest/bin/javaws 200000 && \
    alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 200000
