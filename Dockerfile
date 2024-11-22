#Use the official Python image from the Docker Hub
FROM python:3.9-slim

#set the working directory in the container
WORKDIR /app

#Copy the current directory contents into the container at /app
#Copies all Dockerfile files into the container working directory
COPY . /app

#Install packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

#Define environment variable
#FLASK_APP is a framework specific environment that tells
#the flask command where the application is located to run

ENV FLASK_APP=tv_check.py

#Run app.py when the container launches
CMD ["flask","run","host-0.0.0.0"]