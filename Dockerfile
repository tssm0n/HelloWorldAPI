FROM ubuntu:latest

RUN apt-get update -y \
    && apt-get install -y python-pip python-dev build-essential \
    && apt-get clean

ENV FLASK_APP=app.py
EXPOSE 5000

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0"]
