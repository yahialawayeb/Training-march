# Build
```docker build -t commitainfo/text-completion .```
# Create the Tag for Docker image and push it to Docker Hub repository

```docker push commitainfo/text-completion```

```docker run -it -v `pwd`:/code -w /code -p 5001:5000 commitainfo/text-completion bash```

# Run

```python text.py ```