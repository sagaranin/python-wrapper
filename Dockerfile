FROM python:3.8-slim-buster

RUN /usr/local/bin/python -m pip install --upgrade pip

RUN apt-get update
RUN apt-get install -y build-essential

RUN pip3 install clickhouse-driver

CMD ["tail -f /tail.log", "|", "python3", "/script.py"]
