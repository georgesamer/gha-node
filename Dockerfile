FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
npm ci --omit=dev
COPY . .
CMD ["node", "src/index.js"]