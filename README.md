# Finn BoT-NodeJS-SDK on Docker

FINN enables your IoT devices to perform seamless autonomous payments on your behalf. 
For more information, visit us at [makethingsfinn.com](makethingsfinn.com)

This container makes the Finn-service available as a Docker-container.

# Usage

## Setup

Initially run to link your account with your device via the `makerID`.
```
sudo docker run -ti --net host -v $(pwd)/storage:/app/storage  -w /app/bin finn:latest ./config.sh

Enter your makerID: ZXXXXXXXX
node lib/config.js makerID ...
[7/6/2019, 8:45:09 PM] INFO: Startup - Setting makerID to:...
Are you building a multi pairable device? [no/yes]: no
no
node lib/config.js standalone standalone
[7/6/2019, 8:45:20 PM] INFO: Configuration Service - Generating QR Code... 
[7/6/2019, 8:45:20 PM] SUCCESS: Configuration Service - Configuration successfully initialized 
```

A QR-code is generated. Your finn-phone-app can now be paired via bluetooth or via the QR-code.
You will find these in the local storage-folder.
```
ls storage
configuration.json  qr.png
```


### Running the server

Now you are ready to run the docker - image. To enable bluetooth within the container you need the `--net host` flag. So;
````

```




# Howto build your own image


# Contribute
