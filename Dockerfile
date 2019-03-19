FROM heroku/heroku:18

COPY bin/chisel /usr/local/bin/chisel
COPY bin/ss-server /usr/local/bin/ss-server
COPY bin/goreman /usr/local/bin/goreman
COPY Procfile Procfile

EXPOSE $PORT
CMD goreman -b $PORT start
