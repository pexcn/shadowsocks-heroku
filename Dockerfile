FROM pexcn/docker-images:shadowsocks-rust

COPY start.sh /usr/local/bin/

ENV SS_PASSWORD=freedom_is_not_free
ENV SS_ENCRYPT=chacha20-ietf-poly1305
ENV SS_PLUGIN="xray-plugin"
ENV SS_PLUGIN_OPTS="server;fast-open"

EXPOSE $PORT
CMD ["start.sh"]
