# Use an official base image from the Docker Hub
FROM ubuntu:20.04

# Set environment variables to avoid user interaction during installations
ENV DEBIAN_FRONTEND=noninteractive

# Install Python 3, R, and necessary utilities
RUN apt-get update && apt-get install -y \
    python3 \
    r-base \
    python3-pip \
    curl \
    gnupg

# Copy the Python and R requirements into the container
COPY requirements-py3.txt /tmp/requirements-py3.txt
COPY requirements-R.txt /tmp/requirements-R.txt

# Install Python packages
RUN pip3 install -r /tmp/requirements-py3.txt

# Run the R script to install packages
RUN Rscript /tmp/requirements-R.txt

# Cleanup to reduce image size and remove unnecessary packages
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set the default command for the container
CMD ["bash"]
