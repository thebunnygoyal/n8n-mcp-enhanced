# 🚀 QUICKSTART - n8n MCP Enhanced

## 30-Second Deploy (If you already have Azure Container Apps)

```bash
# Clone and deploy
git clone https://github.com/thebunnygoyal/n8n-mcp-enhanced.git
cd n8n-mcp-enhanced
export N8N_API_KEY="your-api-key"
./quick-deploy.sh
```

## Complete Setup (5 minutes)

### 1. Prerequisites
- Azure CLI installed (`brew install azure-cli` or download from Azure)
- Your n8n API key from n8n settings
- Node.js 18+ (for local testing)

### 2. Clone Repository
```bash
git clone https://github.com/thebunnygoyal/n8n-mcp-enhanced.git
cd n8n-mcp-enhanced
```

### 3. Test Locally First (Optional but Recommended)
```bash
# Install dependencies
npm install

# Set environment variables
export N8N_BASE_URL="https://n8n-app.livelypebble-c844ad2d.eastus2.azurecontainerapps.io"
export N8N_API_KEY="your-api-key-here"

# Run server
npm start

# In another terminal, test it
node test-integration.js
```

### 4. Deploy to Azure
```bash
# Make deployment script executable
chmod +x quick-deploy.sh

# Run deployment
./quick-deploy.sh
```

### 5. Verify Deployment
The script will output your server URL. Test it:
```bash
curl https://your-mcp-server.azurecontainerapps.io/health
```

## Using in Claude

### Basic Test
```javascript
// Check your enhanced server
await get_n8n_health()
```

### Create Your First Smart Workflow
```javascript
await create_workflow({
  name: "My Content Empire",
  template: "content-multiplication-engine",
  configuration: {
    audience: "entrepreneurs seeking freedom",
    platforms: ["twitter", "linkedin", "newsletter"]
  }
})
```

### Get AI Suggestions
```javascript
await suggest_workflow({
  useCase: "I want to automate my entire content pipeline",
  currentTools: ["Twitter", "ConvertKit", "Notion"],
  businessGoals: ["Grow audience", "Save time", "Increase revenue"]
})
```

## Available Templates

1. **content-multiplication-engine** - Turn 1 piece → 10+ formats
2. **audience-intelligence-system** - Monitor what your audience wants
3. **newsletter-automation-suite** - Complete newsletter automation
4. **lead-qualification-pipeline** - Auto-qualify and nurture leads
5. **ai-content-generator** - Daily AI-powered content ideas

## Troubleshooting

### Container App Not Updating?
```bash
# Force a new revision
az containerapp revision list -n mcp-server-app -g rg-n8n-automation
az containerapp update -n mcp-server-app -g rg-n8n-automation --revision-suffix v2
```

### API Key Issues?
```bash
# Update environment variable
az containerapp update -n mcp-server-app -g rg-n8n-automation \
  --set-env-vars N8N_API_KEY="your-new-key"
```

### Need Logs?
```bash
# Stream logs
az containerapp logs show -n mcp-server-app -g rg-n8n-automation --follow
```

## What's Next?

1. **Explore all 25+ tools**: Run `list_tools()` in Claude
2. **Build your automation system**: Connect workflows together
3. **Monitor performance**: Use the analytics tools
4. **Scale your impact**: Your only limit is imagination

---

*"The best time to automate was yesterday. The second best time is now."*