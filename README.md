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
### Add the following to C:\Windows\System32\drivers\etc\hosts
```
0.0.0.0 wasims.apc.edu.ph
::1 wasims.apc.edu.ph localhost
```
### Add certificate to WIndows Cert Manager
Open Windows Run by `WINKEY + R`
type `certmgr.msc`
In Folder `Trusted Root Certification Authorities`
Right click the `Certificates` folder
`All Tasks > Import`
Go to where the default.crt is stored
In my case it is in `\\wsl.localhost\Ubuntu\home\<user>\wasims-dev\docker\nginx\ssl`
Note: Seems to do the trick, but I am not entirely sure.
Because I can still access the custom domain even when the certificate is deleted in the Windows Cert Manager
## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
