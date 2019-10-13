FROM heroku/heroku:18

# prepare binaries
COPY bin/chisel /usr/local/bin/chisel
COPY bin/ss-server /usr/local/bin/ss-server
COPY bin/goreman /usr/local/bin/goreman

# create user
RUN useradd -m heroku
USER heroku

# copy to work dir
WORKDIR /home/heroku
COPY Procfile Procfile

# start
EXPOSE $PORT
CMD goreman -b $PORT start
