FROM python:3.8.3-buster

COPY * /zmirror/

CMD cd /zmirror/ && \
	pip install -r ./requirements.txt

ENV FLASK_DEBUG False
EXPOSE 80/tcp
RUN ["python3","/zmirror/wsgi.py"]
