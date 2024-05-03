# use the official CentOs 7 base image
FROM centos:centos7

# install the Apache HTTP server package from centos repository
RUN yum install httpd -y

# copy the index.html file from the Docker build context to the default Apache document root directory in the container
COPY index.html /var/www/html/

# specify the command to run when the container starts, which starts the Apache HTTP server in the foreground
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

# expose port 80 to allow incoming HTTP traffic to the container
EXPOSE 80
