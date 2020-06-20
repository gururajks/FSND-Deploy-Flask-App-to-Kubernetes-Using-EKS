FROM python:stretch

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", "0.0.0.0:8080", "main:APP" ]
