FROM amazonlinux:2

# Install necessary packages
RUN yum update -y && \
    yum install -y \
    python3 \
    python3-pip \
    git \
    && yum clean all

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . .

# Install application dependencies
RUN pip3 install -r requirements.txt

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["python3", "app.py"]