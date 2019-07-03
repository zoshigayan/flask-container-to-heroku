FROM python:3.7.3-alpine3.10

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD gunicorn -w 4 -b 0.0.0.0:8080 app:app
