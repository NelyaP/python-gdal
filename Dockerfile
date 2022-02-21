FROM python:3.9.5-slim
ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    apt-get install -y binutils libproj-dev gdal-bin python-gdal python3-gdal gcc
