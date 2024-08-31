
# Use the official Python base image
FROM python:3.12-bullseye

# Set the working directory in the container
WORKDIR /workingDir

# Copy the Python script into the container
ADD . /workingDir

# install requirements
RUN pip install -r requirements.txt 


# sleep before run for mysql to load
#ENTRYPOINT ["sh", "-c", "sleep 10"]


# Run the Python script
ENTRYPOINT ["python", "main.py"]