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

# Jenkins Docker Integration

## Overview

This repository demonstrates the integration of Jenkins with Docker. The goal is to run Docker commands without using `sudo` by adding the Jenkins user to the Docker group.

## Instructions

### Step 1: Add Jenkins to the Docker Group


Run the following command to add the Jenkins user to the Docker group:

```bash
sudo usermod -aG docker jenkins

```
### Step 2: Restart Jenkins

Restart the Jenkins service to apply the group changes. Use the appropriate command based on your system. For example, on a system using systemd:
```bash
sudo systemctl restart jenkins
```
### Step 3: Verify Docker Access
Log in as the Jenkins user and run a simple Docker command to verify that Docker can be accessed without using sudo:
```bash
sudo su jenkins
docker run hello-world
```
If successful, you should see a message indicating that Docker is working.

## Repository Structure
Dockerfile: Contains the Docker image configuration for the Jenkins job.
Jenkinsfile: Defines the Jenkins pipeline for building and running the Docker container.
