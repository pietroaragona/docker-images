#!/bin/bash

#mkdir -p /opt/glassfish/domains/domain1/logs/
#touch /opt/glassfish/domains/domain1/logs/server.log
cd /opt/glassfish3/bin/
./asadmin start-domain

echo "****************************************************************"
echo
echo

tail -f /opt/glassfish3/glassfish/domains/domain1/logs/server.log
