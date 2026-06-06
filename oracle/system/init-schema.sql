--login as system
SELECT username, account_status FROM dba_users;

create user ALVIN identified by "c3TcaGf2ZBjuaS5a"
default tablespace USERS
temporary tablespace TEMP;

grant connect, resource to ALVIN;
grant create view, create synonym to ALVIN;

alter user ALVIN quota unlimited on USERS;