FROM postgres:14-alpine
ENV POSTGRES_PASSWORD mysecretpassword
ENV POSTGRES_DB dvdrental
ENV POSTGRES_USER myPGuser
COPY ./db/dvdrental.tar /tmp