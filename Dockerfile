# Usa una imagen base oficial de Node.js (actualizada a v20 para coincidir con tu entorno local)
FROM node:20

# Establece el directorio de trabajo
WORKDIR /app

# Copia package.json y package-lock.json (si existe)
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto del código
COPY . .

# Expone el puerto que usa Cloud Run (por defecto 8080)
EXPOSE 8080

# Configura la variable de entorno PORT
ENV PORT=8080

# Comando para iniciar la aplicación
CMD ["npm", "start"]