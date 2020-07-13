FROM python:buster

COPY . /zmirror/
WORKDIR /zmirror/

RUN python3 -m pip install --no-cache-dir -r ./requirements.txt 

EXPOSE 80/tcp

ENV FLASK_DEBUG False
ENTRYPOINT ls && python3 wsgi.py
