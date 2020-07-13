FROM python:buster

RUN mkdir /zmirror/
WORKDIR /zmirror/
COPY . .
RUN python3 -m pip install --no-cache-dir -r ./requirements.txt 
EXPOSE 80/tcp

ENV FLASK_DEBUG False
ENTRYPOINT python3 ./wsgi.py
