FROM python:3.6.9-alpine


# Install common prerequisites for CI
RUN apk add --no-cache build-base git openssl-dev libffi-dev
