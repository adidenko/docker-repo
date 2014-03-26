FROM centos

MAINTAINER Aleksandr Didenko adidenko@mirantis.com

WORKDIR /root

RUN yum --quiet install -y nginx
ADD nginx_nailgun_repo.conf /etc/nginx/conf.d/repo.conf

EXPOSE 8080
CMD nginx -g 'daemon off;'
