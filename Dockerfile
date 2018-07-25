FROM ubuntu:latest
MAINTAINER Mayank Koli
RUN apt-get update -y
RUN mkdir -p /webapps
WORKDIR /webapps
RUN apt-get install -y python-pip python-dev build-essential git
RUN git clone https://bitbucket.org/azneita/devops-challenge.git
RUN mv devops-challenge devops
WORKDIR devops
RUN pwd
#WORKDIR /webapps/devops
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
