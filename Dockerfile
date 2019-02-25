# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

#ENV HTTP_PROXY "http://10.158.100.2:8080/"
#ENV FTP_PROXY "http://10.158.100.2:8080/"
#ENV HTTPS_PROXY "http://10.158.100.2:8080/"

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt 
#RUN pip install Flask-1.0.2-py2.py3-none-any.whl redis-3.2.0-py2.py3-none-any.whl

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
