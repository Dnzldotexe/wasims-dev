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


## To use custom domain
Add the following to `C:\Windows\System32\drivers\etc\hosts`
```
0.0.0.0 wasims.apc.edu.ph
::1 wasims.apc.edu.ph localhost
```

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
