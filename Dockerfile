# Use lightweight Nginx Alpine image
FROM nginx:alpine

# Remove default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files to the Nginx web root
# Note: If your index.html is inside a 'src' folder, leave this as './src'.
# If index.html is sitting in the main root directory, change './src' to '.'
COPY ./src /usr/share/nginx/html

# Expose port 80 inside the container
EXPOSE 80

# Start Nginx when container launches
CMD ["nginx", "-g", "daemon off;"]