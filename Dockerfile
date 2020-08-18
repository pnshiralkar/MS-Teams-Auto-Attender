FROM selenium/standalone-chrome

USER root

RUN apt update
RUN apt install -y python3 -y python3-pip

COPY requirements.txt /bot/

WORKDIR /bot/

RUN pip3 install -r requirements.txt

COPY . /bot/

USER seluser

ENTRYPOINT python3 autoJoin.py
