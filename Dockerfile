FROM node:alpine

# Install packages needed for building binaries with `npm install`
RUN apk add --no-cache \
    autoconf \
    automake \
    bash \
    g++ \
    libc6-compat \
    libjpeg-turbo-dev \
    libpng-dev \
    make \
    nasm

# Install Java SDK to be used for firebase emulators
RUN apk add openjdk11 \
  --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
  --no-cache

# Install tools needed for firebase install.
RUN apk add git curl wget \
  --no-cache

# Install Firebase CLI
RUN npm install -g firebase-tools
