FROM python:buster

COPY ./ /zmirror/
WORKDIR /zmirror/

RUN apt-get update -y && \
    apt-get upgrade -y && \
    lsattr && \
    python3 -m pip install pip -U && \
    python3 -m pip install -r ./requirements.txt

EXPOSE 80/tcp

ENV FLASK_DEBUG False
ENTRYPOINT ["python3","./wsgi.py"]
