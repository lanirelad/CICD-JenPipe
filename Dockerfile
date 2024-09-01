
# Use the official Python base image
FROM python:3

# Set the working directory in the container
WORKDIR /workingDir

# Copy the Python script into the container
ADD . /workingDir

# install requirements
RUN pip install -r requirements.txt 


# sleep before run for mysql to load Run the Python script
ENTRYPOINT ["sh", "-c", "sleep 10 && python main.py"]