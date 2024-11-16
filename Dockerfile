# Use the official NGINX image from Docker Hub
FROM nginx:latest

RUN mkdir -p /var/cache/nginx /var/log/nginx /var/run/nginx /var/www/html
# Copy your website files into the NGINX html directory
COPY . /usr/share/nginx/html/

RUN ls -lrt

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
