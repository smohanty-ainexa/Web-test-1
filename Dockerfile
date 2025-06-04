# Lightweight Nginx to serve static files
FROM nginx:alpine

# Working directory
WORKDIR /usr/share/nginx/html

# Copy necessary frontend files
COPY . .

# Expose port
EXPOSE 80
