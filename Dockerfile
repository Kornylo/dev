FROM ubuntu:latest
LABEL authors="dk"

ENTRYPOINT ["top", "-b"]

# Use Python 3.9 base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose the port the app runs on
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=project

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
