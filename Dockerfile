# finance-app/Dockerfile
FROM nginx:latest

# The default nginx.conf DOES NOT include /etc/nginx/sites-enabled/*.conf
COPY nginx.conf /etc/nginx/
COPY finance-app.conf /etc/nginx/sites-available/

# Use separate web-server file
RUN mkdir -p /etc/nginx/sites-enabled/ \
    && ln -s /etc/nginx/sites-available/finance-app.conf /etc/nginx/sites-enabled/finance-app.conf \
    && rm /etc/nginx/conf.d/default.conf

# COPY Webserver files
COPY *.html /usr/share/nginx/html/
COPY *.css /usr/share/nginx/html/

