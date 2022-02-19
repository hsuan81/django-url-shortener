FROM python:3.9-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFED=1
WORKDIR /app
# EXPOSE 8000

COPY ./requirements.txt /requirements.txt
RUN apk add --update zsh && pip install --upgrade pip && pip install -r /requirements.txt

# COPY . .

# RUN adduser -D user
# USER user