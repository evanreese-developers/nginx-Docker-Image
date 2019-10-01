# nginx-Docker-Image
 This is my Dockerfile for nginx Images

 ## Purpose
 This file is here to build the image that containers or services will be built from for any application using a nginx webserver. This Dockerfile allows the user to mount all directories needed and keeps the Image from being static.

 ## Directories to Mount
* /etc/nginx/conf.d
* /usr/share/www/html

## Sample Ansible Implementation
```
mounts:
  - type: bind
    source: /home/vagrant/"{{webserver_content_path}}"/etc/nginx/conf.d
    target: /etc/nginx/conf.d
  - type: bind
    source: /home/vagrant/"{{webserver_content_path}}"/usr/share/www/html
    target: /usr/share/www/html
```

## Author
[Evan Reese](https://github.com/ereeseNotAtWork)