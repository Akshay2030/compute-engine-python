FROM launcher.gcr.io/google/debian8:latest
MAINTAINER Sharif Salah <sharif.salah+docker@gmail.com>

RUN apt-get update && \
    apt-get install -y python-dev python-pip && \
    pip install redis flask

ADD app /app

EXPOSE 80

CMD [ "python", "/app/app.py" ]


