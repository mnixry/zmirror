FROM python:3.8.3-buster

COPY * /zmirror/
WORKDIR /zmirror/

RUN python3 -m pip install -r ./requirements.txt
RUN python3 test.py

EXPOSE 80/tcp

ENV FLASK_DEBUG False
CMD ["python3","./wsgi.py"]
