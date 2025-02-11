# Use the official Python image as a base
FROM python:3.9-slim-buster

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Set the workingiii directory in the container file .
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . /app

# Expose port 5000 to the outside world
EXPOSE 5000

# Run the Flask app when the container launches
CMD ["flask", "run"]