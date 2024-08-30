# Use a imagem do Node.js v22.7.0
FROM node:22.7.0

WORKDIR /app

# Copie os arquivos de dependências
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o restante do código
COPY . .

# Compile o código
RUN npm run build

# Defina o comando de inicialização
CMD [ "npm", "run", "start:dev" ]
