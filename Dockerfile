FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./config.sh /

CMD ["/config.sh"]