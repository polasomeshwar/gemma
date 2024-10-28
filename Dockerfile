# Use a lightweight Python base image with PyTorch
FROM python:3.10-slim

# Install PyTorch and any other dependencies
RUN pip install --no-cache-dir torch

# Create a working directory
WORKDIR /app

# Copy model files to the container
COPY . /app

# Install any specific libraries required by the model
# (add or modify libraries as needed)
RUN pip install safetensors transformers

# Specify an entry point for inference (replace this with your specific entry point)
CMD ["python", "-c", "print('Model loaded successfully')"]
