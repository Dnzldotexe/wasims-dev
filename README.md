## How to run the project

### Clone repository
```
git clone https://github.com/Dnzldotexe/wasims-dev.git
```

### Navigate to project
```
cd wasims-dev/
```

### Change branch
```
git checkout nginx-test
```

### Setup development environment
```
chmod u+x dev-setup.sh
./dev-setup.sh
```

## How to stop the project

### Stop npm
Press keys `CTRL + C`

### Stop sail container
```
sail down
```

### Run it again
```
sail up -d
sail npm run dev
```


## How to use Nginx

### Run sail down while making changes
### Comment out the laravel.test in docker-compose.yml
### Uncomment the nginx and php-fpm in docker-compose.yml
### Run sail up again
### Add the following to /etc/hosts and C:\Windows\System32\drivers\etc\hosts
```
0.0.0.0 wasims.apc.edu.ph
::1 wasims.apc.edu.ph localhost
```
Note: I can seem to access the custom domain with the above instructions.
But Firefox is not allowing me to open the website.
"The certificate is not trusted because it is self-signed"
Will be leaving this one for another time,
this can be circumvented locally by making the certificate trusted.
https://support.kaspersky.com/cyber-trace/4.3/174127
## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
