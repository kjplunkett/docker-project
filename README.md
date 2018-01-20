# Docker Project
First docker project

## Overview
A simple ubuntu docker image with node and python2.7

## Getting Started
Prerequisites: 
- Docker: `brew cask install docker`

```bash
# Clone the repo
git clone git@github.com:kjplunkett/docker-project.git

# Navigate to the project root
cd docker-project

# Build the docker image
docker build -t hello-docker .

# Run the docker image as a container
docker run hello-docker
```

You should see an npm script that calls a python file to output "hello world!"
