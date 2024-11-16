# Use the official NGINX image from Docker Hub
FROM nginx:latest

USER root

RUN mkdir -p /var/cache/nginx /var/log/nginx /var/run/nginx /var/www/html /var/cache/nginx/client_temp
# Copy your website files into the NGINX html directory
COPY . /usr/share/nginx/html/

# RUN proxy_pass http://pwm-node:3000;

RUN ls -lrt

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
