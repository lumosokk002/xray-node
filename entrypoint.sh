#!/bin/sh
set -e
# Platforms inject $PORT at runtime; xray must listen on it, not on a fixed port.
if [ -n "$PORT" ]; then
  sed -i "s/\"port\":8080/\"port\":$PORT/" /etc/xray/config.json
fi
exec /usr/local/bin/xray run -c /etc/xray/config.json
