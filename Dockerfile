FROM centos

# USER root

RUN yum -y update; yum clean all \
    && yum -y install \
    epel-release \
    openssh-server \
    openssh-clients \
    && yum clean all

EXPOSE 22

ENTRYPOINT ["/sbin/init", "-D"]