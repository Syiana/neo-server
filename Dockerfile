# Verwenden Sie ein offizielles Node.js-LTS-Laufzeit-Image als Basis
FROM node:lts

# Setzen Sie das Arbeitsverzeichnis in dem Container
WORKDIR /usr/src/app

# Kopieren Sie die Paket.json und Paket-Lock.json Dateien in das Arbeitsverzeichnis
COPY server/package*.json ./

# Installieren Sie die Anwendung
RUN npm install

# Kopieren Sie den Server-Ordner in das Arbeitsverzeichnis
COPY server/ ./server/

# Exponieren Sie den Port, auf dem die Anwendung läuft
EXPOSE 8080

# Definieren Sie den Befehl zum Ausführen der Anwendung
CMD [ "node", "server/automation.js" ]