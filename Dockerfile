FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT [ "gunicorn", "-b", "0.0.0.0:8080", "main:APP" ]