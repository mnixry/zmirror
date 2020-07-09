FROM python:buster

COPY ./ /zmirror/
WORKDIR /zmirror/

RUN ls -a && \
    python3 -m pip install -r ./requirements.txt && \
    python3 ./test.py

EXPOSE 80/tcp

ENV FLASK_DEBUG False
CMD ["python3","./wsgi.py"]
