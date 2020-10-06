#!/bin/bash 

yum update -y 

yum install -y epel-release 

dnf install nginx certbot python3-certbot-nginx -y 

certbot --nginx --agree-tos -m ryantiffany@fastmail.com -d centos.cdetesting.com



sed -i "s|FQDN_PLACEHOLDER|${fqdn}|" ${fqdn}
sed -i "s|ICOS_ENDPOINT_PLACEHOLDER|${private_icos_endpoint}|" ${fqdn}