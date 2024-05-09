# Use the TensorFlow GPU base image
FROM tensorflow/tensorflow:latest-gpu

# Install or upgrade Keras
RUN pip install --upgrade keras

# Set an entrypoint or CMD if needed, otherwise you can leave it empty for flexibility
# Example: Uncomment the following if you want a specific default command
# CMD ["python", "your_script.py"]