FROM python:3.6.9-alpine


# Install common prerequisites for CI
RUN apk update && \
  apk add \
    --no-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/main \
    build-base \
    gdal \
    git \
    libffi-dev \
    musl-dev \
    openssl-dev \
    postgresql-libs \
    postgresql-dev \
    py-gdal
