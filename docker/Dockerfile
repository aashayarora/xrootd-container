FROM centos:centos7

RUN yum update -y
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum --disablerepo=* --enablerepo=osg install -y vim osg-xrootd-standalone osg-ca-certs
RUN yum clean all && rm -rf /var/cache/yum/

COPY xrootd.cfg /etc/xrootd/xrootd.cfg

COPY docker-entrypoint.sh /

ENTRYPOINT /docker-entrypoint.sh
