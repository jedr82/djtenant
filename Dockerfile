#Pull base image
FROM python:3.12.0-slim-bullseye

#Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#Set Work directory
WORKDIR /code

#Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

RUN mkdir -p /code/static_root
#Copy proyect
COPY . .