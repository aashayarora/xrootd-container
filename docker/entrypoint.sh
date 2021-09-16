#!/bin/bash
CERT_DIR=/etc/grid-security/
mkdir -p $CERT_DIR/xrd
if [ -f $CERT_DIR/hostcert.pem ]; then
    cp -f $CERT_DIR/hostcert.pem $CERT_DIR/xrd/xrdcert.pem
    cp -f $CERT_DIR/hostkey.pem $CERT_DIR/xrd/xrdkey.pem
    chmod 644 $CERT_DIR/xrd/xrdcert.pem
    chmod 600 $CERT_DIR/xrd/xrdkey.pem
    chown -R xrootd:xrootd $CERT_DIR/xrd
fi

# Run XRootD
xrootd -R xrootd -c /etc/xrootd/xrootd-tpc.cfg
