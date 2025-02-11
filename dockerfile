# Utiliser une image de base
FROM python:3.10

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer un port (ex: Flask utilise souvent 5000)
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "app.py"]
