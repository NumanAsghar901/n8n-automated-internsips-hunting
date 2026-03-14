FROM node:18-alpine

RUN apk add --no-cache git

RUN npm install -g n8n

ENV N8N_PORT=5678
ENV PORT=5678
ENV PATH="/usr/local/bin:$PATH"

EXPOSE 5678

ENTRYPOINT ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]
CMD ["start"]
