chisel: chisel server --socks5
ss-server: ss-server -s 127.0.0.1 -p ${SS_PORT:-2080} -k ${SS_PASSWORD:-heroku} -m ${SS_METHOD:-chacha20-ietf-poly1305} -t ${SS_TIMEOUT:-300} -u -d 8.8.8.8 --mtu ${SS_MTU:-1500} --reuse-port --fast-open
