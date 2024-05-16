# Use the TensorFlow GPU base image
FROM docker.io/tensorflow/tensorflow:latest-gpu

# Set the working directory in the container
WORKDIR /app

# Install Python dependencies using pip
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the source code
COPY src /app/src

# Add the project root directory to the Python path
ENV PYTHONPATH /app:/app/src:/app/src/readability_classifier:$PYTHONPATH
