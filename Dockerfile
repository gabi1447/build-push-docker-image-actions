FROM nginx

# Copy the directory from the host to the container
COPY ./html/index.html /usr/share/nginx/html/index.html

# Expose container port 80 (mapped to host port 8081)
EXPOSE 80

# Set the working directory for the container process
WORKDIR /usr/share/nginx/html/

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
