FROM postgres:latest
COPY foodfacts.csv /docker-entrypoint-initdb.d/
COPY init.sql /docker-entrypoint-initdb.d/
