CREATE USER security_user WITH PASSWORD 'security' CREATEDB;

CREATE DATEBASE security
    WITH
    OWNER = security_user
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

create user rental_user WITH PASSWORD 'rental' CREATEDB;

CREATE DATEBASE rental
    WITH
    OWNER = rental_user
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;