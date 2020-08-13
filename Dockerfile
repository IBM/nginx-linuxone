FROM nginx:latest

COPY ./non-root.nginx.conf /etc/nginx/nginx.conf
COPY ./non-root.conf.d.nginx.conf /etc/nginx/conf.d/default.conf
COPY ./index.html /var/www/htdocs/index.html
COPY ./penguin.jpg /var/www/htdocs/penguin.jpg
RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx
