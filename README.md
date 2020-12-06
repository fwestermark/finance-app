# Introduction 
This docker image provides a simple web page with a login. The login accepts whatever is entered into the username and password fields. 

# Purpose
The purpose of the image is to provide a simple web-front to which to provide a demo page for command injections (CMDi).


# Installation
clone this repository and edit to your liking or pull from docker-hub.


# Using docker
```docker run --name finance-app -p 80:80 fwestermark/finance-app```


# Using docker-compose 
```console
finance-app:
  image: fwestermark/finance-app
  container_name: finance-app
  hostname: finance-app
  restart: unless-stopped
  ports:
    - 80:80

```


