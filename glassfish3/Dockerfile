FROM alanpeng/oracle-jdk6


ADD https://download.oracle.com/glassfish/3.1.2.2/release/glassfish-3.1.2.2.zip /tmp

# Default payara ports to expose
# 4848: admin console
# 9009: debug port (JPDA)
# 8080: http
# 8181: https
EXPOSE 4848 9009 8080 8181

ENV \
    HOME_DIR=/opt \
    PAYARA_DIR=/opt/glassfish3\
    DOMAIN_NAME=domain1\
    ADMIN_USER=admin\
    ADMIN_PASSWORD=admin \
    PASSWORD_FILE=/opt/glassfish3/passwordFile

#COPY glassfish3 ${HOME_DIR}

RUN \ 
    yum install -y unzip && \
    unzip /tmp/glassfish-3.1.2.2.zip -d ${HOME_DIR} && rm -rf /tmp/glassfish-3.1.2.2.zip && \
    echo -e "AS_ADMIN_PASSWORD=\nAS_ADMIN_NEWPASSWORD=${ADMIN_PASSWORD}" > /tmp/tmpfile && \
    echo "AS_ADMIN_PASSWORD=${ADMIN_PASSWORD}" >> ${PASSWORD_FILE} && \
    # Configure the payara domain
    ${PAYARA_DIR}/bin/asadmin --user ${ADMIN_USER} --passwordfile=/tmp/tmpfile change-admin-password --domain_name=${DOMAIN_NAME} && \
    ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} start-domain ${DOMAIN_NAME} && \
    ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} enable-secure-admin && \
     ${PAYARA_DIR}/bin/asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} stop-domain ${DOMAIN_NAME} && \
	echo "last coomand"

WORKDIR "${PAYARA_DIR}/bin/"
COPY start-gf-custon.sh .
RUN chmod +x start-gf-custon.sh
CMD ["./start-gf-custon.sh"]
