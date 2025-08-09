# Imagen base
FROM node:18

# Crear carpeta de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Puerto que usará el backend
EXPOSE 3001

# Comando de inicio
CMD ["node", "index.js"]
