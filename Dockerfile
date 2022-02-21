FROM python:3.9.5-slim
ENV PYTHONUNBUFFERED 1

RUN apt-get update && \
    apt-get install -y binutils libproj-dev gdal-bin python-gdal python3-gdal gcc

RUN pip install --upgrade pip
RUN pip install pipenv psycopg2-binary
COPY Pipfile* ./
RUN pipenv install --system --deploy --ignore-pipfile