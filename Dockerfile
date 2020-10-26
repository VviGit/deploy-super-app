FROM node:10 as builder

COPY app/* /app

WORKDIR /app

RUN npm install

CMD ["node", "server.js"]

FROM node:10-slim

EXPOSE 3000

COPY --from=builder /app/server.js /app/server.js
COPY --from=builder /app/node_modules /app/node_modules

WORKDIR /app

CMD ["node", "server.js"]