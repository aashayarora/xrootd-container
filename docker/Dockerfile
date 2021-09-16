FROM centos:centos7

RUN yum install -y epel-release.noarch && \
    yum -y update && \
    yum install -y xrootd xrootd-client

ADD auth-file-noauth /etc/xrootd/auth-file-noauth
ADD xrootd.cfg /etc/xrootd/xrootd-tpc.cfg

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
