# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to the Nginx directory
COPY index.html /usr/share/nginx/html/
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY images /usr/share/nginx/html/images

# Expose port 80 to access the web server from outside the container
EXPOSE 80

# Start Nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]
