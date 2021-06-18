#!/bin/sh

exec ss-server \
  -s 0.0.0.0 \
  -p $PORT \
  -k $SS_PASSWORD \
  -m $SS_ENCRYPT \
  -t 3600 \
  -n 1048576 \
  -u \
  --reuse-port \
  --fast-open \
  --no-delay \
  --plugin "xray-plugin" \
  --plugin-opts "server;fast-open"
