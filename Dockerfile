FROM centos

MAINTAINER Aleksandr Didenko adidenko@mirantis.com

WORKDIR /root

ADD nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum --quiet install -y nginx
ADD nginx_nailgun_repo.conf /etc/nginx/conf.d/repo.conf

EXPOSE 8080
CMD nginx -g 'daemon off;'
