# Use the official MySQL image from the Docker Hub
FROM mysql:latest

# Environment variables
ENV MYSQL_DATABASE=ecommerce
ENV MYSQL_ROOT_PASSWORD=root_pwd

# Add the compressed database dump file to the container
COPY docker/mysql/ecommerce.sql.gz /docker-entrypoint-initdb.d/