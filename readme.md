## Create Cert/Key pair for the redi and the origin

From within ./certs,

```
./generate.sh REDI_IPV6 ../redi
./generate.sh ORIGIN_IPV6 ../origin
```

## Create Redirector container first.

Set the vars in redi/docker-compose.yml as follows:

`REDI_ADDR` = ipv6 of the machine the redirector will run on.

`INTF_NAME` = name of the macvlan interface corresponding to the ipv6.

## Then create the Origin container

Same for the origin

`REDI_ADDR` = ipv6 of the redirector

`INTF_NAME` = name of the macvlan interface corresponding to the ipv6 of the ORIGIN.