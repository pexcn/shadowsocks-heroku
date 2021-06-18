FROM pexcn/docker-images:shadowsocks-libev

COPY start.sh /usr/local/bin/

ENV SS_PASSWORD=
ENV SS_ENCRYPT=

ENV TFO_COMPAT=1
EXPOSE $PORT
CMD ["start.sh"]
