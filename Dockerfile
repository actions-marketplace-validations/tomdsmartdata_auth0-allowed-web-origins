FROM python:3.8.2-slim

# Copies your code file from your action repository to the filesystem path '/' of the contaienr
COPY entrypoint.sh /entrypoint.sh
COPY add_origin.py /add_origin.py
COPY remove_origin.py /remove_origin.py
COPY requirements.txt /requirements.txt

WORKDIR /

RUN pip install -r requirements.txt

# Code file to execute when the docker container starts up ('entrypoint.sh')
ENTRYPOINT ["/entrypoint.sh"]
