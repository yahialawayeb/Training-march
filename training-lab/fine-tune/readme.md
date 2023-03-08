# Build
```docker build -t commitainfo/fine-tune .```

# Create the Tag for Docker image and push it to Docker Hub repository

```docker push commitainfo/fine-tune```

```docker run -it -v `pwd`:/code -w /code -p 5001:5000 commitainfo/fine-tune bash```

# Run

```python chat.py ```