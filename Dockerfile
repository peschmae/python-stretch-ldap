FROM python:3.7-buster

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qy && \
    apt-get install -y  build-essential python3-dev libldap2-dev libsasl2-dev slapd ldap-utils tox lcov valgrind && \
    apt-get clean && \
    pip install --upgrade pip
