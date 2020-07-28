CREATE USER security_user WITH PASSWORD 'security';

CREATE DATABASE security
    WITH
    OWNER = security_user
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT ALL PRIVILEGES ON DATABASE security TO security_user;

CREATE USER rental_user WITH PASSWORD 'rental';

CREATE DATABASE rental
    WITH
    OWNER = rental_user
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
GRANT ALL PRIVILEGES ON DATABASE rental TO rental_user;
