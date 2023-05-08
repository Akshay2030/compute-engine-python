FROM launcher.gcr.io/google/debian8:latest
MAINTAINER Sharif Salah <sharif.salah+docker@gmail.com>

RUN sudo apt-get update && \
    sudo apt-get install -y python-dev python-pip && \
    sudo pip install redis flask

ADD app /app

EXPOSE 80

CMD [ "python", "/app/app.py" ]


