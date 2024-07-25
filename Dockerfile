FROM postgres:16.3-bookworm
ENV POSTGRES_PASSWORD fact123
ENV POSTGRES_DB student_inventory
COPY createdb.sql /docker-entrypoint-initdb.d
