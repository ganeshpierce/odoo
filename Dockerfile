FROM python:3.8-onbuild
RUN apt-get update
RUN pip install -r ./requirements.txt

ENV PYTHONUNBUFFERED 1

EXPOSE 8069