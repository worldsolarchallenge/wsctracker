FROM nginx:alpine

WORKDIR /app

COPY ./static ./static

COPY ./nginx.conf /etc/nginx/nginx.conf

# Make port 8080 available to the world outside this container
EXPOSE 8080