FROM node:22-alpine AS base
WORKDIR /app

# Install dependencies using a clean install
COPY package*.json ./
RUN npm ci --omit=dev

# Copy source code
COPY . .

# No build step needed (if you had TypeScript or bundling, do npm run build here)

EXPOSE 3001
CMD ["npm", "start"]
