# shadowsocks-heroku

## Usage

### Environment variable

Variable | Default value | Description
--- | --- | ---
`SS_PASSWORD` | `freedom_is_not_free` | shadowsocks password
`SS_ENCRYPT` | `chacha20-ietf-poly1305` | shadowsocks encrypt method

### One-click deployment

[![Heroku Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/pexcn/shadowsocks-heroku)

### Manually deployment

```bash
# deploy
git clone https://github.com/pexcn/shadowsocks-heroku.git && cd shadowsocks-heroku
heroku login
heroku git:remote -a <app_name>
heroku stack:set container
git push heroku master

# check
heroku ps
heroku logs
```

### Tips

```bash
#
# simple-obfs -> 80
#
# server
obfs=http;fast-open
# client
obfs=http;obfs-host=appname.herokuapp.com;fast-open

#
# v2ray-plugin/xray-plugin -> 443
#
# server
server;fast-open
# client
tls;fast-open;host=appname.herokuapp.com;mux=5;loglevel=none

#
# cloudflare workers code snippet
#
addEventListener(
  "fetch", event => {
    let url = new URL(event.request.url);
    url.hostname = "appname.herokuapp.com";
    let request = new Request(url, event.request);
    event.respondWith(
      fetch(request)
    )
  }
)
```

## Credits

- https://github.com/shadowsocks/shadowsocks-rust
