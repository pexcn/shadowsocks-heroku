FROM pexcn/docker-images:shadowsocks-rust

COPY start.sh /usr/local/bin/

ENV SS_PASSWORD=
ENV SS_ENCRYPT=

EXPOSE $PORT
CMD ["start.sh"]
