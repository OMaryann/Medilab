# get a base image from Docker Hub
FROM nginx:latest

RUN rm -rf /usr/share/nginx/html/*

# define working directory
WORKDIR /usr/share/nginx/html

# Copy your website files into the NGINX web folder
COPY . /usr/share/nginx/html

# Expose port 80 (the default HTTP port)
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
