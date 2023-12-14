<p align="center">
  <img src="https://img.shields.io/badge/Docker-Apache-blue?style=for-the-badge" alt="Docker Apache Badge">
</p>

# Apache Docker Container

This Docker container sets up an Apache web server on an Ubuntu base image.

<p align="center">
  <img src="https://img.shields.io/badge/Ubuntu-Latest-orange?style=for-the-badge" alt="Ubuntu Badge">
  <img src="https://img.shields.io/badge/Docker-19.03%2B-blue?style=for-the-badge" alt="Docker Badge">
</p>

## Prerequisites

Before running the container, ensure that your system is up-to-date and Docker is installed.

### Update System

```bash
sudo apt update
sudo apt upgrade -y
```

##  Install Docker

```bash
sudo apt install docker.io -y
```
### Usage

### Build Docker Image

```bash
git clone https://github.com/SerrySingh/apache-docker.git
cd httpd-docker
sudo docker build -t my-apache-image .
```
# View Docker Images

Check the list of Docker images on your system.

```bash
sudo docker images
```

# Run Apache Docker Container

To run the Apache Docker container, execute the following command in your terminal:

```bash
sudo docker run -p 8080:80 my-apache-image
```

# Jenkins Configure excute shell commands 
```bash

cd httpd-docker
ls -lhtr

# Build the Docker image
docker build -t github-docker .

# Display the list of Docker images
docker images

docker run -d -p 5000:80 github-docker 
echo "Done"
```
