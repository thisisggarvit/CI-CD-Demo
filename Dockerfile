# Use a lightweight web server image
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy website files to nginx web root
COPY . /usr/share/nginx/html

# Expose port 80 (not used locally, but required for cloud)
EXPOSE 80
 