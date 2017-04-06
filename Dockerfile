FROM nginx
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./config.sh /
# ENTRYPOINT ["./config.sh"]
CMD ["/config.sh"]