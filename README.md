## How to run

### Clone repository
```
git clone https://github.com/Dnzldotexe/wasims-dev.git
```

### Navigate to project
```
cd wasims-dev/
```

### Copy environment variables
```
cp .env.example .env
```

### Install dependencies
```
docker run --rm \
    -u "$(id -u):$(id -g)" \
    -v "$(pwd):/var/www/html" \
    -w /var/www/html \
    laravelsail/php83-composer:latest \
    composer install --ignore-platform-reqs
```

### Add an alias
```
sudo echo "alias sail='./vendor/bin/sail'" >> ~/.bashrc
source ~/.bashrc
```

### Run project
```
sail up -d
```

### Run database migrations
```
sail artisan migrate
```

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
