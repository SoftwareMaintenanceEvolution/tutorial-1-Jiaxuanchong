# Repository: https://github.com/jakesgordon/javascript-tetris
# Use an official Nginx image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx configuration to avoid conflicts
RUN rm -rf ./*

# Copy your static files (HTML, CSS, JS) to the Nginx directory
COPY . .

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]

