# shadowsocks-heroku

## Intro

### Data flow

```
user <---> shadowsocks client <---> chisel client <---> chisel server <---> shadowsocks server <---> target
```

### Environment variable

Variable | Default value | Description
--- | --- | ---
`SS_PORT` | `2080` | shadowsocks server port
`SS_PASSWORD` | `heroku` | shadowsocks password
`SS_METHOD` | `chacha20-ietf-poly1305` | shadowsocks encryption method
`SS_TIMEOUT` | `300` | shadowsocks timeout, unit: `second`
`SS_MTU` | `1500` | shadowsocks mtu size

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

## Usage

```bash
# chisel client
chisel client --keepalive 5m https://<app_name>.herokuapp.com <ss_port>

# shadowsocks client
ss-local -s 127.0.0.1 -p <ss_port> -k <ss_password> -m <ss_method> -l <local_port> -u
```

Point of your SOCKS5 clients to `127.0.0.1:<local_port>`

## Reference

- https://github.com/mrluanma/shadowsocks-chisel
- https://github.com/iineva/heroku-chisel-shadowsocks
