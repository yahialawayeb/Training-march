# create the network
```docker network create --driver bridge --subnet=10.0.0.0/24  training-network```

# run python
```docker run -it -v `pwd`:/code -w /code  --network training-network --ip 10.0.0.9 --name server-python commitainfo/python-flask bash```

```python hello_world.py```

# run ruby
```docker run -it -v `pwd`:/code -w /code -p 8081:8080 --network training-network --name server-ruby --ip 10.0.0.5 commitainfo/ruby-server  bash```

```ruby server.rb```


############################################################################

# how to run Ruby-app server

```docker build -t commitainfo/ruby-server .```


```docker run -it -v `pwd`:/code -w /code -p 8081:8080 ruby bash```


```ruby server.rb```