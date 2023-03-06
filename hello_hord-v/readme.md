# Hello World in V
This is a simple V language application that prints "Hello, World!" to the console.

# Usage
1. Install Docker on your system if you don't already have it installed.

2. Clone this repository to your local machine.

3. Open a terminal window and navigate to the project directory.

```docker run -it -v `pwd`:/code -w /code thevlang/vlang bash```

3. Build the Docker image for the project by running the following command:

```docker build -t hello-vlang .```

4. Run the Docker container for the project by running the following command:

```docker run --rm hello-vlang```

This should output "Hello, World!" to the console.

5. Run app tests in the project by running the following:
```v hello.v -o bin/hello```

# License

This project is licensed under the MIT License. Feel free to use and modify this code as you see fit.




