--login as system
SELECT username, account_status FROM dba_users;

create tablespace MY_APP_DATA
datafile '/opt/oracle/app/oradata/orcl/my_app_data01.dbf'
size 100M
autoextend on
next 50M maxsize unlimited;

create user ALVIN identified by "c3TcaGf2ZBjuaS5a"
default tablespace MY_APP_DATA
temporary tablespace TEMP;

grant connect, resource to ALVIN;
grant create view, create synonym to ALVIN;

alter user ALVIN quota unlimited on MY_APP_DATA;