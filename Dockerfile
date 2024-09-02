# Utiliser une image Node.js 18 comme image de base
FROM node:18

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json (si présent)
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application dans le conteneur
COPY . .

# Exposer le port 8080
EXPOSE 8080

# Démarrer l'application avec Vite
CMD ["npm", "run", "dev"]
