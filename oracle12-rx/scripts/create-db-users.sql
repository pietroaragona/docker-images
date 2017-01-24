
/* OWNER */
CREATE USER DEV0_CORE_OWNER IDENTIFIED BY DEV0_CORE_OWNER DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_CORE_OWNER;
CREATE USER DEV0_PLAT_OWNER IDENTIFIED BY DEV0_PLAT_OWNER DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_PLAT_OWNER;
CREATE USER DEV0_STG_OWNER IDENTIFIED BY DEV0_STG_OWNER DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_STG_OWNER;

/* APP */
CREATE USER DEV0_CORE_APP IDENTIFIED BY DEV0_CORE_APP DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_CORE_APP;
CREATE USER DEV0_PLAT_APP IDENTIFIED BY DEV0_PLAT_APP DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_PLAT_APP;
CREATE USER DEV0_STG_APP IDENTIFIED BY DEV0_STG_APP DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_STG_APP;

/* SERV */
CREATE USER DEV0_CORE_SERV IDENTIFIED BY DEV0_CORE_SERV DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_CORE_SERV;
CREATE USER DEV0_PLAT_SERV IDENTIFIED BY DEV0_PLAT_SERV DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_PLAT_SERV;
CREATE USER DEV0_STG_SERV IDENTIFIED BY DEV0_STG_SERV DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_STG_SERV;


/* BATCH */
CREATE USER DEV0_CORE_BATCH IDENTIFIED BY DEV0_CORE_BATCH DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_CORE_BATCH;
CREATE USER DEV0_PLAT_BATCH IDENTIFIED BY DEV0_PLAT_BATCH DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_PLAT_BATCH;
CREATE USER DEV0_STG_BATCH IDENTIFIED BY DEV0_STG_BATCH DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_STG_BATCH;

/* SELECT */
CREATE USER DEV0_CORE_SELECT IDENTIFIED BY DEV0_CORE_SELECT DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_CORE_SELECT;
CREATE USER DEV0_PLAT_SELECT IDENTIFIED BY DEV0_PLAT_SELECT DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_PLAT_SELECT;
CREATE USER DEV0_STG_SELECT IDENTIFIED BY DEV0_STG_SELECT DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
GRANT ALL PRIVILEGES TO DEV0_STG_SELECT;


/* NAPLES_DBA */
CREATE USER NAPLES_DBA IDENTIFIED BY NAPLES_DBA DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE temp QUOTA 5M ON system;
--GRANT ALL PRIVILEGES TO NAPLES_DBA;
GRANT  DBA TO NAPLES_DBA ;
