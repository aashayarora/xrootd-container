FROM centos:centos7

RUN yum update -y
RUN yum install -y https://repo.opensciencegrid.org/osg/3.6/osg-3.6-el7-release-latest.rpm
RUN yum --disablerepo=* --enablerepo=osg install -y vim osg-xrootd-standalone osg-ca-certs
RUN yum clean all && rm -rf /var/cache/yum/

COPY xrootd.cfg /etc/xrootd/xrootd.cfg

COPY docker-entrypoint.sh /

ENTRYPOINT /docker-entrypoint.sh
