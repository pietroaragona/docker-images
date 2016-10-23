FROM pengbai/docker-oracle-12c-r1

MAINTAINER Pietro Aragona <pietroaragona@gmail.com>

ENV NLS_LANG American_America.UTF8

COPY scripts/create-db-users.sql /entrypoint-initdb.d
