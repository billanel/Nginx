FROM nginx:stable-alpine3.19-perl
# Copy the custom HTML file to the default NGINX public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80