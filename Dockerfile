FROM node:latest

# Install Java SDK to be used for firebase emulators
RUN apt update -y && \
  apt install -y openjdk-8-jdk-headless && \
  apt clean

# Install Firebase CLI
RUN npm install -g firebase-tools
