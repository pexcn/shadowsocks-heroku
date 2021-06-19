FROM pexcn/docker-images:shadowsocks-rust

COPY start.sh /usr/local/bin/

ENV SS_PASSWORD=
ENV SS_ENCRYPT=
ENV SS_PLUGIN=
ENV SS_PLUGIN_OPTS=

EXPOSE $PORT
CMD ["start.sh"]
