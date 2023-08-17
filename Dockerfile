FROM python:3.10

RUN apt-get update && apt-get install -y --allow-unauthenticated universe

RUN apt-get install python3-pip

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD ["python3", "app.py"]
