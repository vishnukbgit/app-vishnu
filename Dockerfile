FROM postgres:16.4-bookworm
ENV POSTGRES_PASSWORD fact123
ENV POSTGRES_DB student_inventory
COPY createdb.sql /docker-entrypoint-initdb.d
