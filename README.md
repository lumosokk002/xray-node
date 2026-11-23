# xray-node

Minimal Xray (VLESS + WebSocket) node image for free-tier PaaS deploys.

- Listens on `$PORT` (defaults to 8080 when unset; `entrypoint.sh` rewrites the port).
- VLESS + WS, no TLS in-app (platform edge terminates TLS).
- `config.json` holds the UUID and WS path for this deployment.
