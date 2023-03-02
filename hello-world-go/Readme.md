## How to run app GO

1. ```docker pull golang```

2. ```docker run -it -v `pwd`:/code -w /code -p 8082:8080 golang  bash``` OR ```docker run -p 8082:8080 bbacem/hello-go```

3. ```go run hello.go```



