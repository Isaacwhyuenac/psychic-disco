FROM python:3.7.6-buster

WORKDIR /usr/src/app

RUN pip install -U setuptools

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./app.py" ]
