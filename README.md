## How to run the project
### Clone repository
```
git clone https://github.com/Dnzldotexe/wasims-dev.git
```
### Navigate to project
```
cd wasims-dev/
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

## To run it again
### Start sail and npm
```
sail up -d
sail npm run dev
```


## To use custom domain
### Add following code to hostfile `C:\Windows\System32\drivers\etc\hosts`
```
0.0.0.0 wasims.apc.edu.ph
::1 wasims.apc.edu.ph localhost
```
### Add certificate in your browser
[Importing SSL Certificate in Firefox](https://docs.titanhq.com/en/3834-importing-ssl-certificate-in-mozilla-firefox.html)

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
