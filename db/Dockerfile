FROM postgres:14-alpine

ENV POSTGRES_PASSWORD=mysecretpassword \
    POSTGRES_USER=myself 

# Copy the SQL script to create the role and database 
# Initial scripts run info at https://hub.docker.com/_/postgres

COPY init.sql /docker-entrypoint-initdb.d/

# Unzip the file with the command
COPY db/dvdrental.tar /tmp/dvdrental.tar 

RUN tar xvf /tmp/dvdrental.tar

EXPOSE 5432

ENTRYPOINT [ "psql" ]
