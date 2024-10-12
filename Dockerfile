# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the HTML, CSS, and JS files to the Nginx server's web directory
COPY public/ /usr/share/nginx/html

# Expose port 80 to access the web server from outside the container
EXPOSE 80

# Start Nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]
