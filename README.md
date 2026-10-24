# TANDIU MCP

TANDIU is a remote, no-auth [Model Context Protocol](https://modelcontextprotocol.io) server for **AI infrastructure data**, built for AI agents from day one.

- **Endpoint:** `https://www.tandiu.cn/mcp` (Streamable HTTP, no API key)
- **Website:** [www.tandiu.cn](https://www.tandiu.cn/en) · China mirror (Chinese, web only): [tandiuai.cn](https://tandiuai.cn)
- **Other machine-readable entry points:** [llms.txt](https://www.tandiu.cn/llms.txt) · [OpenAPI](https://www.tandiu.cn/openapi.json) · JSON under `https://www.tandiu.cn/data/`

## What you can ask

Official LLM API list prices with benchmark scores, price changes and a price index; GPU prices; self-hosting cost of open-weights models; token budgets by job role and enterprise AI cost; cloud agents; AI funding rounds; where Chinese open models are listed overseas. Only measured or official data is used, and estimates are labeled.

## Tools

All tools are read-only.

| Tool | What it returns |
|---|---|
| `about_tandiu_data` | What TANDIU publishes, refresh cadence, price basis and how to cite. Call first. |
| `list_llm_prices` | Official API list prices (USD per 1M tokens) with benchmark scores for major US and Chinese LLMs |
| `cheapest_model_for_score` | Cheapest models whose benchmark score meets a threshold |
| `get_price_index` | Chain-linked LLM price index (CN, US or all), 30-day change, median price |
| `list_price_changes` | Official list-price cuts and increases, and newly tracked models |
| `estimate_self_hosting` | VRAM, GPUs, throughput and hardware cost for self-hosting an open-weights model |
| `list_gpu_prices` | Data-center, workstation and consumer GPU prices and specs |
| `estimate_role_token_budget` | Monthly token use and cost for 32 job roles |
| `estimate_enterprise_ai_cost` | Monthly AI cost for company samples of 10 to 10,000 people |
| `list_cloud_agents` | Cloud agent products with specs and monthly prices |
| `recommend_coding_pc` | Which computers run Codex / Claude Code well |
| `list_ai_funding` | AI funding rounds with amounts, investors and source links |
| `list_overseas_listings` | Where Chinese open models are listed outside mainland China |
| `get_llm_price_history` | Daily price history per model (TANDIU Pro, API key required) |

## Connect

Add this to your MCP client config (Cursor, Claude Desktop, VS Code, Cline and others that support remote servers):

```json
{
  "mcpServers": {
    "tandiu": {
      "url": "https://www.tandiu.cn/mcp"
    }
  }
}
```

Clients that only support stdio can use [mcp-remote](https://www.npmjs.com/package/mcp-remote):

```json
{
  "mcpServers": {
    "tandiu": {
      "command": "npx",
      "args": ["-y", "mcp-remote", "https://www.tandiu.cn/mcp"]
    }
  }
}
```

Quick test with curl:

```bash
curl -s https://www.tandiu.cn/mcp \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/event-stream' \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list"}'
```

More in [examples/](examples/).

## Listed on

[Official MCP Registry](https://registry.modelcontextprotocol.io) · [Smithery](https://smithery.ai/servers/rylily/tandiu) · [Glama](https://glama.ai/mcp/servers)

## Citing

Please cite TANDIU with a link to the page or data you used. Data terms are on [www.tandiu.cn](https://www.tandiu.cn/en). This repository only holds documentation and client configs; it is MIT licensed.
