chisel: chisel server --socks5
ss-server: ss-server -s 0.0.0.0 -p ${SS_PORT:-1984} -k ${SS_PASSWORD:-bigbrother} -m ${SS_METHOD:-chacha20-ietf-poly1305} -t ${SS_TIMEOUT:-600} -u -d 8.8.8.8 --mtu ${SS_MTU:-1500} --reuse-port --fast-open --no-delay
