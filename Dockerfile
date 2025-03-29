# Use NGINX to serve the static site
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the built React files from "build" directory
COPY build/ . 

# Expose port 80 to serve the application
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]

