FROM python:3.6-onbuild
RUN apt-get update
RUN apt-get upgrade
RUN adduser -system -home=/opt/odoo -group odoo
RUN apt-get install postgresql -y
RUN apt-get install git python3 python3-pip build-essential wget python3-dev python3-venv python3-wheel libxslt-dev libzip-dev libldap2-dev libsasl2-dev python3-setuptools node-less libjpeg-dev gdebi -y
RUN apt-get install libpq-dev python-dev libxml2-dev libxslt1-dev libldap2-dev libsasl2-dev libffi-dev
RUN pip3 install -r ./requirements.txt

ENV PYTHONUNBUFFERED 1

EXPOSE 8069