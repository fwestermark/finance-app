# Introduction 
This image provides a simple web with a dummy login. 

Available at docker-hub at:
```docker pull fwestermark/finance-app:latest```

# Purpose
The purpose of the image is to provide a simple web-front to which to demo CMD injections

# Use docker-compose 
```console
finance-app:
  image: fwestermark/finance-app
  container_name: finance-app
  hostname: finance-app
  restart: unless-stopped
  ports:
    - <local ip address>:80:80
```

