FROM node:18-alpine

RUN npm install -g n8n

ENV N8N_PORT=5678
ENV PORT=5678

EXPOSE 5678

CMD ["npx", "n8n", "start"]
