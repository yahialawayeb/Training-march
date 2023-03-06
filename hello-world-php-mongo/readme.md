# How to run this project

```docker build -t commitainfo/php-mongo .```

```docker run --network training-network --ip 10.0.0.4 -p 9093:80 -it -v `pwd`:/code -w /code  commitainfo/php-mongo bash```

```php -S 0.0.0.0:80```