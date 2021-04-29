FROM node:14.16.1-alpine3.13
WORKDIR /app
COPY package*.json ./
# O * SERVE PARA DIZER QUE EU QUERO PEGAR QUALQUER ARQUIVO QUE COMECE COM "package"
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "index.js"]