FROM pexcn/docker-images:shadowsocks-rust

USER root

ENV SS_DOMAIN=example.herokuapp.com
ENV SS_PASSWORD=password
ENV SS_METHOD=chacha20-ietf-poly1305

EXPOSE $PORT
CMD ["ssserver", "--server-addr 0.0.0.0:$PORT", "--password $SS_PASSWORD", "--encrypt-method $SS_METHOD", "--timeout 3600", "--udp-timeout 300", "--udp-max-associations 512", "--nofile 1048576", "--tcp-fast-open", "--tcp-no-delay", "-U", "--plugin xray-plugin", "--plugin-opts server;tls;fast-open;host=$SS_DOMAIN"]
