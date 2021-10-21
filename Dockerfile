FROM python:3.9-alpine
LABEL maintainer="Informach"

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install requirements
RUN mkdir -p /tmp/requirements
ADD requirements /tmp/requirements
RUN apk add --update --no-cache postgresql-client jpeg-dev
RUN apk add --update --no-cache --virtual .tmp-build-deps \
    build-base gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
RUN pip install --upgrade pip
RUN pip install -r /tmp/requirements/development.txt
RUN apk del .tmp-build-deps

# install git and bash
RUN apk add bash
RUN apk add git

RUN mkdir -p /src
COPY src/ /src/
RUN pip install -e /src
COPY tests/ /tests/

WORKDIR /src
