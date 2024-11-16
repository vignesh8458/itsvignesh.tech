# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy your website files into the NGINX html directory
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
