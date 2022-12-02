FROM arm32v7/python:2.7.13-jessie

WORKDIR /flask-app

COPY requirements.txt .

RUN pip install -r requirements.txt 

COPY ./app ./app 

CMD ["python", "./app/app.py"]