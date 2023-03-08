# Pull the Docker image :

```docker pull python```

# Build

```docker build -t commitainfo/python-flask .```
# Create the Tag for Docker image and push it to Docker Hub repository

```docker tag commitainfo/python-flask commitainfo/python-flask:v1.0```

```docker push commitainfo/python-flask:v1.0```

```docker run -it -v `pwd`:/code -w /code -p 5001:5000 commitainfo/python-flask:v1.0 bash```

# Run

```python hello_world.py ```