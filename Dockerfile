FROM python:3.9.12-slim-buster

WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt

EXPOSE 5000
CMD [ "python", "/app/main.py"]
