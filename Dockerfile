#Usa imagen oficial de Node.js como imagen base
FROM node:22-alpine 

#Establece variable de entorno para el puerto
ENV PORT=4000

#Crea directorio de trabajo 
WORKDIR /usr/src/app

# Install dependencies
#copia el archivo package.json 
COPY package.json /usr/src/app/ 
#sirve para instalas las dependencias del proyecto
RUN npm install

# Copy source
#copia el archivo server.js
COPY server.js /usr/src/app

#Expone el puerto para acceder a la app
EXPOSE $PORT
#comando para ejecutar la app 
CMD [ "npm", "start" ]
