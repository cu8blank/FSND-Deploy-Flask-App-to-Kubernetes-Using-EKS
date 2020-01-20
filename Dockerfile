FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install flask
RUN pip install gunicorn

ENTRYPOINT ["gunicorn","-b",":8080","main:APP"]
