FROM centos:stream8

RUN yum update -y
RUN yum -y install vim osg-xrootd-standalone osg-ca-certs
RUN yum clean all && rm -rf /var/cache/yum/

COPY auth-file /etc/xrootd/auth-file
COPY xrootd.cfg /etc/xrootd/xrootd.cfg
COPY supervisord.conf /etc/
COPY image-config.d/* /etc/osg/image-config.d/

RUN chmod go-w /etc/supervisord.conf

COPY docker-entrypoint.sh /