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


## To use custom domain (optional)
### Add following code to hostfile
```
0.0.0.0 wasims.apc.edu.ph
::1 wasims.apc.edu.ph localhost
```
Located in `C:\Windows\System32\drivers\etc\hosts`
### Add certificate to windows certificate manager
1. Open windows run by pressing `WINKEY + R`   
2. Type `certmgr.msc` then enter   
3. Open `Trusted Root Certification Authorities`   
4. Right click `Certificates`  
5. Click `All Tasks > Import > Browse` 
6. Paste the location of `default.crt` file    
7. In my case it is `\\wsl.localhost\Ubuntu\home\<user>\wasims-dev\docker\nginx\ssl`   
8. Click next until certificate is successfully added  
9. Open `Firefox > Settings > Search Certificates > View Certificates > Servers > Add Exception`    
10. Paste `https://wasims.apc.edu.ph`
11. Press Get Certificate and Confirm
12. Open [wasims.apc.edu.ph](http://wasims.apc.edu.ph/) 

## License
The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
