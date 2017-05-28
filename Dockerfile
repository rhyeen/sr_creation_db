FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD rootpassword
ENV MYSQL_DATABASE sr_creation_dev
ENV MYSQL_USER sr_creation_dev
ENV MYSQL_PASSWORD password

ADD setup.sql /docker-entrypoint-initdb.d