FROM nginx:stable
LABEL maintainer "ahmadgfari@gmail.com"

#robots.txt dissalow all
COPY robots.txt /usr/share/nginx/html/
# Remove the default Nginx configuration
RUN rm -rf /etc/nginx/conf.d/default.conf

# Copy your custom configuration
COPY nginx.conf /etc/nginx/nginx.conf
