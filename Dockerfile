FROM python:2.7.8

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN mkdir -p /usr/src/app
COPY . /usr/src/app

WORKDIR /usr/src/app

CMD ["python", "datapusher/main.py", "config/setting.py"]
