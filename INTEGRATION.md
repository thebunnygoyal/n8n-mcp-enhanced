# Integration Guide

## Quick Integration with Azure Container Apps

### Step 1: Clone and Setup
```bash
git clone https://github.com/thebunnygoyal/n8n-mcp-enhanced.git
cd n8n-mcp-enhanced
```

### Step 2: Copy Enhanced Server Code
Copy the complete enhanced server.js from the Claude artifact to replace server-placeholder.js

### Step 3: Build and Deploy
```bash
# Build locally first
docker build -t n8n-mcp-enhanced .

# Test locally
docker run -p 3000:3000 \
  -e N8N_BASE_URL="https://n8n-app.livelypebble-c844ad2d.eastus2.azurecontainerapps.io" \
  -e N8N_API_KEY="your-api-key" \
  n8n-mcp-enhanced

# Deploy to Azure
az containerapp update \
  --name mcp-server-app \
  --resource-group rg-n8n-automation \
  --image n8n-mcp-enhanced:latest
```

### Step 4: Verify Deployment
```bash
# Check health
curl https://mcp-server-app.[your-domain]/health

# List available tools
curl https://mcp-server-app.[your-domain]/mcp/tools/list
```