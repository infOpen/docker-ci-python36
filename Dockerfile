FROM python:3.6.9-alpine


# Install common prerequisites for CI
RUN apk add --no-cache \
  build-base \
  git \
  libffi-dev \
  musl-dev \
  openssl-dev \
  postgresql-libs \
  postgresql-dev
