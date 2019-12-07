FROM thinkwhere/gdal-python:3.6

# Environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Add nc dependency
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y \
      libarmadillo-dev \
      libgdal20 \
      libgdal-dev \
      libhdf4-alt-dev \
      libhdf5-dev \
      libhdf5-103 \
      libnetcdf-dev \
      libsqlite3-mod-spatialite \
      netcat \
      spatialite-bin \
 && rm -rf /var/lib/apt/lists/* \
 && apt-get clean
