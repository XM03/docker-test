FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3.7
RUN apt-get install -y python-pip

COPY requirements /root/python/requirements
RUN pip install -r /root/python/requirements/common.txt

