# XRootD Container Image

To deploy in Kubernetes: <br>

```
git clone https://github.com/aaarora/xrootd-container
cp hostcert.pem hostkey.pem xrootd-container/k8s/certs
cd xrootd-container/k8s/
kubectl create -k .
```
