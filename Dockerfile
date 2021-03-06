FROM python:3.7

RUN apt-get update && apt-get install -y python3-pip && apt-get clean

WORKDIR /worka
ADD . /worka

RUN pip3 install -r requirements.txt

ENV PYTHONUNBUFFERED=1


