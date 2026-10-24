#!/usr/bin/env bash
# Call a TANDIU MCP tool over Streamable HTTP with curl.
set -euo pipefail
URL=https://www.tandiu.cn/mcp
H=(-H 'Content-Type: application/json' -H 'Accept: application/json, text/event-stream')

curl -s "$URL" "${H[@]}" -d '{"jsonrpc":"2.0","id":1,"method":"tools/call","params":{"name":"list_price_changes","arguments":{}}}'
