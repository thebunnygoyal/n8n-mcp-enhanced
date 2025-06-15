#!/bin/bash

# n8n MCP Enhanced - Quick Deploy Script
# This script deploys your enhanced MCP server to Azure Container Apps

set -e

echo "🚀 n8n MCP Enhanced - Quick Deploy"
echo "=================================="

# Configuration
RESOURCE_GROUP="rg-n8n-automation"
CONTAINERAPP_NAME="mcp-server-app"
N8N_BASE_URL="https://n8n-app.livelypebble-c844ad2d.eastus2.azurecontainerapps.io"

# Check if logged in to Azure
if ! az account show > /dev/null 2>&1; then
    echo "❌ Not logged in to Azure. Running 'az login'..."
    az login
fi

# Get API key
if [ -z "$N8N_API_KEY" ]; then
    read -p "Enter your n8n API key: " N8N_API_KEY
fi

# Update Container App
echo "🔄 Updating Container App with enhanced server..."
az containerapp update \
  --name $CONTAINERAPP_NAME \
  --resource-group $RESOURCE_GROUP \
  --set-env-vars \
    N8N_BASE_URL="$N8N_BASE_URL" \
    N8N_API_KEY="$N8N_API_KEY" \
    ENABLE_WEBSOCKET="true" \
    NODE_ENV="production" \
    ENHANCED_VERSION="2.0.0"

# Scale configuration
echo "⚡ Optimizing scale configuration..."
az containerapp update \
  --name $CONTAINERAPP_NAME \
  --resource-group $RESOURCE_GROUP \
  --min-replicas 1 \
  --max-replicas 3

# Enable ingress for WebSocket
echo "🌐 Enabling WebSocket support..."
az containerapp ingress update \
  --name $CONTAINERAPP_NAME \
  --resource-group $RESOURCE_GROUP \
  --target-port 3000 \
  --transport auto

# Get the URL
FQDN=$(az containerapp show \
  --name $CONTAINERAPP_NAME \
  --resource-group $RESOURCE_GROUP \
  --query properties.configuration.ingress.fqdn -o tsv)

echo ""
echo "✅ Deployment complete!"
echo "🔗 Your enhanced MCP server: https://$FQDN"
echo "📡 WebSocket endpoint: wss://$FQDN"
echo ""
echo "🧪 Test your deployment:"
echo "   curl https://$FQDN/health"
echo ""
echo "🎯 Next steps:"
echo "   1. Test in Claude with 'await get_n8n_health()'"
echo "   2. Create your first workflow"
echo "   3. Monitor logs with: az containerapp logs show -n $CONTAINERAPP_NAME -g $RESOURCE_GROUP"