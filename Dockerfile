# Using a compact OS
FROM ubuntu:latest

MAINTAINER Seaborn Lee <seabornlee.cn@gmail.com> 

# Install Nginx
RUN apk --update add nginx

# Add 2048 stuff into Nginx server
COPY . /usr/share/nginx/html

EXPOSE 80

# Start Nginx and keep it from running background
CMD ["nginx", "-g", "daemon off;"]
