FROM nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./config.sh /
RUN chmod +x /config.sh
CMD ["/config.sh"]
