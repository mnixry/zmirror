FROM python:buster

RUN mkdir /zmirror/

WORKDIR /zmirror/

COPY . .

RUN python3 -m pip install --no-cache-dir -r ./requirements.txt && \
    cp -rvf config_default.py config.py
    
EXPOSE 80/tcp

ENV FLASK_DEBUG False
CMD ls -lAh && python3 wsgi.py
