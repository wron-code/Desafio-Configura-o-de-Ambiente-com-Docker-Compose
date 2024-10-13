# Usando uma imagem base leve (alpine)
FROM node:14-alpine

# Definindo o diretório de trabalho
WORKDIR /usr/src/app

# Copiando o package.json e instalando dependências
COPY package*.json ./
RUN npm install

# Copiando o código da aplicação
COPY . .

# Expondo a porta em que a aplicação será executada
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
