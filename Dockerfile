FROM ubuntu:18.04
RUN 	apt-get update && \
		apt-get install -y build-essential software-properties-common && \
		apt-get install -y byobu curl git htop man unzip vim wget python3 && \
		apt-get install -y libssl-dev libffi-dev python3-dev python3-pip

WORKDIR /app
ADD requirements.txt  /app
RUN pip3 install -r requirements.txt

ADD . /app
CMD ["python3", "app.py"]
