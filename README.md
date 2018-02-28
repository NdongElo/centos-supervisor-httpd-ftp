# centos-supervisor-httpd-vsftpd

## Base Docker Image.
**Centos**

### Use of this image.
**you can use this image to control the services of httpd and vsftpd using the supervisor** .

## To create the containers with the credentials we use: 
## Docker run example:
# docker run -p 8080:80 -p 21:21 -p 20:20 -p 9001:9001 -e USER=aurelio -e PASSWORD=admin -d ndongelo/centos-supervisor-httpd-vsftp .

*Whit the port 9001 we use the supervisor*.

*Whit the 20 and 21 we use the vsftpd*.

*With the 8080, we map the port "80" which is the default port of httpd and this port is the one used by the container*.

*To access the httpd we use host-ip:8080*. 

*for example 192.168.33.10:8080*.

*To access the supervisor we use host-ip:9001*.

*for example 192.168.33.10:9001*.

*To access the vsftpd we use ftp://host-ip*. 

*for example ftp://192.168.33.10*.

# configuration folders.
## config
### config
**bootstrap.sh**
### scrpts.us
**create_user.sh**   **supervisor_secre.sh**
## etc
**supervisord.conf**    **vsftpd.conf**
## supervisor.d  
**httpd.conf**    **vsftpd.conf**
## var
**/lftp/pub**.


## Used images in the process
**ndongelo/centos-httpd-php**

## Docker Pull Command
**docker pull ndongelo/centos-supervisor-httpd-vsftpd**

## Authors
Celestino Ndong Elo
