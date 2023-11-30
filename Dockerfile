FROM ubuntu:latest

# Set the working directory in the image
WORKDIR /app

# Copy the files from the host file system to the image file system
COPY . /app

# Install the necessary packages
RUN apt-get update && apt-get install -y openjdk-17-jdk

# Set environment variables
ENV NAME World

# Run a command to start the application
CMD ["java", "sam"]

