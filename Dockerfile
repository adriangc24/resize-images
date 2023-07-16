# Etapa de compilación
FROM node:18 as builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Etapa de producción
FROM node:18-alpine

WORKDIR /app

COPY --from=builder /app/package*.json ./

RUN npm ci --only=production

COPY --from=builder /app/dist ./dist

CMD ["node", "dist/main"]