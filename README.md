# shadowsocks-heroku

## Intro

### Data flow

```
user <---> shadowsocks with v2ray-plugin client <---> shadowsocks with v2ray-plugin server <---> target
```

### Environment variable

Variable | Default value | Description
--- | --- | ---
`SS_PASSWORD` | `password` | shadowsocks-rust password
`SS_METHOD` | `chacha20-ietf-poly1305` | shadowsocks-rust encrypt method

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
