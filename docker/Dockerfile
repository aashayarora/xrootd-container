FROM centos:centos7

RUN yum update -y
RUN yum -y install vim osg-xrootd-standalone osg-ca-certs
RUN yum clean all && rm -rf /var/cache/yum/

COPY xrootd.cfg /etc/xrootd/xrootd.cfg

COPY docker-entrypoint.sh /
