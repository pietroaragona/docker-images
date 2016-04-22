#!/bin/bash
/etc/init.d/tomcat6 start
# The container will run as long as the script is running,
# which is why we need something long-lived here
exec tail -f /var/log/tomcat6/catalina.out
