# shadowsocks-heroku

## Usage

### Environment variable

Variable | Default value | Description
--- | --- | ---
`SS_PASSWORD` | `password` | shadowsocks password
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

# check status
heroku ps
heroku logs
```

## Credits

- https://github.com/shadowsocks/shadowsocks-rust
