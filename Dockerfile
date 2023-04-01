# Utilisation d'une image Ubuntu (par défaut la dernière en date) pour construire notre image docker file
#FROM ubuntu 
# Mise à jour des repository distant du container, avant d'installer les paquets requis pour le projet
#RUN apt update && apt upgrade -y
# Permet d'éviter d'avoir le bug concernant le choix de la timezone
#RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata 
# exécution de l'application
#RUN  npm run server 
#RUN npm run dev
# deploiement
#RUN npm run build
FROM node:alpine
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm i
CMD ["npm", "run", "start"]
