# Use the official Python image from Docker Hub as the base image
FROM python:3.8

 # Label manteainer 
 LABEL maintainer marcia.gutierrez@utec.edu.pe

 # Git Clone 
 RUN git clone -q https://github.com/aikram/flask-app

 # Set the working directory to app
 WORKDIR app

 # Install any needed packages specified in requirements.txt
 RUN pip install -r requirements.txt

 # Make port 8000 available to the world outside this container
 EXPOSE 8000

 # Define environment variable
 ENV NAME FlaskApp

 # Run app.py when the container launches
 CMD ["python", "app.py"]

