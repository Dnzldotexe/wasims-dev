## To run the project
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

## To stop the project
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
### Add following code to hostfile
```
0.0.0.0 wasims.apc.edu.ph
::1 wasims.apc.edu.ph localhost
```
Located in `C:\Windows\System32\drivers\etc\hosts`
### Add certificate to windows certificate manager
Open windows run by pressing `WINKEY + R`   
Type `certmgr.msc` then enter   
Open `Trusted Root Certification Authorities`   
Right click `Certificates`  
Click `All Tasks > Import > Browse` 
Paste the location of `default.crt` file    
In my case it is `\\wsl.localhost\Ubuntu\home\<user>\wasims-dev\docker\nginx\ssl`   
Click next until certificate is successfully added  
Open [wasims.apc.edu.ph](http://wasims.apc.edu.ph/) 

## License
The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
