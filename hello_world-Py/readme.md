# Python Flask Docker Image
This Docker image contains a simple Python Flask web application that displays a "Hello World" message. Follow these steps to run the application in a Docker container:

# Prerequisites
Before you can run the application in a Docker container, you need to have Docker installed on your system. You can download Docker from the official website: # https://www.docker.com/products/docker-desktop.

# Running the Application
To run the application in a Docker container, follow these steps:

Open a command prompt or terminal window.

# Pull the Docker image from Docker Hub:

```docker pull commitainfo/python-flask:latest```

This command pulls the latest version of the Docker image from the Docker Hub repository named commitainfo/python-flask.

# Start a Docker container:

```docker run -p 5000:5000 commitainfo/python-flask```

This command starts a new Docker container based on the commitainfo/python-flask image and maps port 5000 in the container to port 5000 on the host system.

Open a web browser and navigate to http://localhost:5000. You should see a "Hello World" message displayed in the browser.


```docker run -it -v `pwd`:/code -w /code python bash ```

```docker build -t commitainfo/python-flask .```


```docker tag commitainfo/python-flask commitainfo/python-flask:v1.0```

```docker push commitainfo/python-flask:v1.0```