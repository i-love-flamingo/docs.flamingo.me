FROM nginx
COPY workspace/docs/site /usr/share/nginx/html
EXPOSE 80
