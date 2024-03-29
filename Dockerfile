FROM nginx:latest
RUN apt-get update && apt-get dist-upgrade -y && apt-get clean && apt-get autoclean && apt-get install openssl -y
ENV WWW_PATH /usr/share/www/html
RUN mkdir -p ${WWW_PATH} && chown nginx:nginx ${WWW_PATH}
RUN rm /etc/nginx/conf.d/default.conf
#The following directories must be included as mounts in the Service or Container for this Image to be used:
# * /etc/nginx/conf.d
# * /usr/share/www/html