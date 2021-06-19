#!/bin/sh

exec ssserver \
  --server-addr 0.0.0.0:$PORT \
  --password $SS_PASSWORD \
  --encrypt-method $SS_ENCRYPT \
  --dns udp://8.8.8.8,8.8.4.4 \
  --timeout 3600 \
  --udp-timeout 300 \
  --udp-max-associations 1024 \
  --nofile 1048576 \
  --tcp-keep-alive 300 \
  --tcp-fast-open \
  --tcp-no-delay \
  -U \
  --plugin "$SS_PLUGIN" \
  --plugin-opts "$SS_PLUGIN_OPTS"
