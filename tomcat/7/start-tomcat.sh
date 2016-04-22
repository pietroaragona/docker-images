#!/bin/bash
/etc/init.d/tomcat7 start
# The container will run as long as the script is running,
# which is why we need something long-lived here
exec tail -f /var/log/tomcat7/catalina.out
