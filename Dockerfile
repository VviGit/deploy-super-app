FROM node:12 as builder

EXPOSE 3000

COPY app/* .

RUN npm install

CMD ["node", "server.js"]