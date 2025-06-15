FROM node:20-alpine

# Install git
RUN apk add --no-cache git

# Set working directory
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/thebunnygoyal/n8n-mcp-enhanced.git .

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Set environment
ENV NODE_ENV=production
ENV PORT=3000

# Start the enhanced server
CMD ["node", "server.js"]