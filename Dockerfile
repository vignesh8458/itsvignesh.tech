# Use the official NGINX image from Docker Hub
FROM nginx:alpine

RUN mkdir -p /var/cache/nginx /var/log/nginx /var/run/nginx /var/www/html /var/cache/nginx/client_temp  /var/cache/nginx/proxy_temp
# Copy your website files into the NGINX html directory
COPY ./web/ /usr/share/nginx/html/

# RUN proxy_pass http://pwm-node:3000;

RUN ls -lrt
