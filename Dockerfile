FROM node:latest

# Install Java SDK to be used for firebase emulators
RUN apt-get update -y && \
   apt-get install -y default-jre && \
   apt-get clean

# Install Firebase CLI
RUN npm install -g firebase-tools
