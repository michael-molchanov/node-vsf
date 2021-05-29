FROM node:14-alpine

LABEL maintainer "Michael Molchanov <mmolchanov@adyax.com>"

# Install system dependencies
RUN apk add --update --no-cache \
    autoconf \
    bash \
    ca-certificates \
    curl \
    freetype-dev \
    g++ \
    gcc \
    git \
    libpng-dev \
    linux-headers \
    make \
    openssh-client \
    patch \
    python \
    python-dev \
    wget \
    && rm -rf /var/cache/apk/*

RUN npm install -g pm2 typescript @types/node ts-node \
    && node --version \
    && npm --version \
    && yarn versions

ENV PM2_ARGS="--no-daemon"
