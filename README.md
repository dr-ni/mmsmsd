# mmsmsd

## About
This is a simple SMS deamon for modemmanager. The deamon handles incomming and outgoing SMS. All SMS are stored in ~/.mmsmsd. The deamon has to be started as local user process eg. over modem 0 ```mmsmsd 0 > /dev/null & 2>&1``` Never run two deamons on the same modem. You can list your modems like this: 
```mmcli -L```
You can send an SMS over modem 0 like this: ```mmsendsms 0 +49xxxxxx "your text"```

## Development


Install:
```sh
sudo make install
```

Uninstall:
```sh
sudo make uninstall
```

## Use
Start deamon:
```sh
mmsmsd <modem number> > /dev/null & 2>&1
```

Send SMS:
```sh
mmsendsms <modem number> <phone number> <your text message>
```

https://github.com/dr-ni/mmsmsd
