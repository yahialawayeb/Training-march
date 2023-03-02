## Angular CLI Docker Image
This Docker image contains the latest version of the Angular CLI, and can be used to build and serve Angular applications in a Docker container.

# Getting Started
To use this Docker image, you'll need to have Docker installed on your local machine. You can download Docker from the official website: https://www.docker.com/products/docker-desktop.

# Running an Angular Application
To run an existing Angular application using this Docker image, you'll need to mount the application directory as a volume in the Docker container. Here's an example command:

```docker run -it -v `pwd`:/code -w /code -p 8080:4200 ange10k/angularcli bash``` OR ```docker run -p 8080:80 bbacem/hello-angular```


```ng new my-app``` 



This command starts a new Docker container based on the ange10k/angularcli image, maps port 4200 in the container to port 4200 on the host system, and mounts the directory containing your Angular application as a volume in the container.