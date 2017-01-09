#!/usr/bin/env bash

docker run -it \
-p 23:22 \
-p 8081:8080 \
-p 9991:9990 \
--name mywildfly \
-v /c/repos/wba/rx-renewal-deploy/scripts/maven/wildfly/target/assembly-distribution/eas:/tmp/wildfly_deployments \
--rm \
pietroaragona/wildfly