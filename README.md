# 🚀 n8n MCP Server - Maximum Enhanced Edition

> Transform your n8n instance into an AI-powered automation command center with 25+ tools.

**Your GitHub Repository**: https://github.com/thebunnygoyal/n8n-mcp-enhanced

## ✨ What's New in v2.0

- **25+ Advanced Tools** (up from 6)
- **AI-Powered Workflow Suggestions**
- **15+ Pre-built Templates** for creators & entrepreneurs
- **Real-time WebSocket Monitoring**
- **Batch Operations** for managing multiple workflows
- **Advanced Analytics & Optimization**
- **Smart Credential Management**

## 🎯 Quick Deploy (30 seconds)

```bash
git clone https://github.com/thebunnygoyal/n8n-mcp-enhanced.git
cd n8n-mcp-enhanced
export N8N_API_KEY="your-api-key"
./quick-deploy.sh
```

That's it! Your enhanced MCP server will be deployed to your existing Azure Container App.

## 🧪 Test Your Upgrade

In Claude, run:
```javascript
// Check health
await get_n8n_health()

// See all 25+ tools
const tools = await axios.post('https://your-server/mcp/tools/list')
console.log(`You now have ${tools.data.tools.length} automation tools!`)

// Create an advanced workflow
await create_workflow({
  name: "Content Empire Builder",
  template: "content-multiplication-engine",
  configuration: {
    audience: "entrepreneurs seeking freedom"
  }
})
```

## 📚 Available Templates

### 1. Content Multiplication Engine
Transform one piece of content into 10+ formats automatically:
- Twitter/X threads
- LinkedIn posts  
- Newsletter sections
- Video scripts
- Email campaigns

### 2. Audience Intelligence System
Monitor what your audience actually cares about:
- Real-time social media monitoring
- Trend analysis
- Pain point identification
- Content opportunity detection

### 3. Newsletter Automation Suite
Complete newsletter pipeline:
- Content curation
- AI writing assistance
- Subscriber management
- Performance tracking

### 4. Lead Qualification Pipeline
Intelligent lead management:
- Automatic scoring
- Data enrichment
- Tier classification
- Personalized nurture sequences

### 5. AI Content Generator
Daily content ideas based on:
- Google trends
- Keyword research
- Competitor analysis
- Audience interests

## 🛠️ All 25+ Tools

**Workflow Management**
- `get_n8n_health` - Comprehensive system health check
- `list_workflows` - List with filtering and stats
- `create_workflow` - Create from templates or custom
- `update_workflow` - Modify existing workflows
- `delete_workflow` - Remove with optional backup
- `duplicate_workflow` - Clone and modify

**Execution Control**
- `execute_workflow` - Run with monitoring
- `get_executions` - Execution history and metrics
- `stop_execution` - Stop running workflows
- `retry_execution` - Retry failed executions

**Advanced Features**
- `import_workflow` - Import from JSON/URL
- `export_workflow` - Export in multiple formats
- `analyze_workflow` - Get optimization insights
- `batch_operation` - Bulk workflow operations

**AI & Intelligence**
- `suggest_workflow` - AI-powered recommendations
- `optimize_workflow` - Performance suggestions

**System Management**
- `list_credentials` - Credential management
- `create_credential` - Add new credentials
- `test_credential` - Test connectivity
- `list_webhooks` - Webhook management
- `test_webhook` - Test webhook endpoints
- `get_system_info` - System capabilities
- `debug_workflow` - Step-by-step debugging
- `get_logs` - System and workflow logs

## 🏗️ Architecture

```
┌─────────────────┐     ┌──────────────────┐     ┌─────────────┐
│   Claude Chat   │────▶│  MCP Server v2   │────▶│  n8n API    │
└─────────────────┘     └──────────────────┘     └─────────────┘
                               │
                               ▼
                        ┌──────────────┐
                        │  WebSocket   │
                        │  Real-time   │
                        │  Monitoring  │
                        └──────────────┘
```

## 💡 Philosophy

*"Your automations should work while you sleep, think while you create, and scale while you live."*

This isn't just an upgrade - it's a paradigm shift. You're moving from:
- Automation **user** → Automation **architect**
- Tool **consumer** → System **designer**  
- Time **trader** → Leverage **creator**

## 🔧 Local Development

```bash
# Install dependencies
npm install

# Set environment
export N8N_BASE_URL="your-n8n-url"
export N8N_API_KEY="your-api-key"

# Run locally
npm start

# Test
npm test
```

## 🚨 Troubleshooting

See [QUICKSTART.md](QUICKSTART.md) for common issues and solutions.

## 📈 What's Next?

1. **Create your first workflow** using templates
2. **Connect workflows** into a unified system
3. **Monitor performance** with analytics
4. **Scale infinitely** - your only limit is imagination

## 🤝 Contributing

This is open source! Feel free to:
- Add new workflow templates
- Improve existing tools
- Share your automation patterns
- Report issues or suggest features

## 📜 License

MIT - Build your automation empire freely.

---

**Remember**: "Everyone wants to change the world but nobody wants to upgrade their infrastructure."

You just did both. 🎉

**Support**: For issues, check the [GitHub Issues](https://github.com/thebunnygoyal/n8n-mcp-enhanced/issues) or the comprehensive [INTEGRATION_GUIDE.md](INTEGRATION.md)