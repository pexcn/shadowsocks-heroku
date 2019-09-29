# shadowsocks-heroku

## Intro

### Data flow

```
user <---> shadowsocks client <---> chisel client <---> chisel server <---> shadowsocks server <---> target
```

### Environment variable

Variable | Default value | Description
--- | --- | ---
`SS_PORT` | `1984` | shadowsocks-libev server port
`SS_PASSWORD` | `bigbrother` | shadowsocks-libev password
`SS_METHOD` | `chacha20-ietf-poly1305` | shadowsocks-libev encrypt method
`SS_TIMEOUT` | `600` | shadowsocks-libev timeout, unit: seconds
`SS_MTU` | `1500` | shadowsocks-libev mtu size

## Deploy

```bash
# deploy
git clone https://github.com/pexcn/shadowsocks-heroku.git && cd shadowsocks-heroku
heroku login
heroku git:remote -a <app_name>
heroku stack:set container
git push heroku master

# check status
heroku ps
heroku logs
```

**OR**

Click this button:  
[![Heroku Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/pexcn/shadowsocks-heroku)

## Client

Refer to the [docs](https://github.com/jpillora/chisel#usage) of chisel:
> ```bash
> - local-host defaults to 0.0.0.0 (all interfaces).
> - local-port defaults to remote-port.
> - remote-port is required*.
> - remote-host defaults to 0.0.0.0 (server localhost).
> ```

```bash
# chisel client
chisel client --keepalive 10m https://<app_name>.herokuapp.com [chisel_local_host]:[chisel_local_port]:[ss_remote_host]:<ss_remote_port>

# shadowsocks client
ss-local -s <chisel_local_host> -p <chisel_local_port> -k <ss_password> -m <ss_method> -l <ss_local_port>
```

Point of your SOCKS5 clients to `127.0.0.1:<ss_local_port>`

## Reference

- https://github.com/mrluanma/shadowsocks-chisel
- https://github.com/iineva/heroku-chisel-shadowsocks
