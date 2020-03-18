#!/bin/bash
# script para generar certificados letsencrypt (certbot)--->https://github.com/wmnnd/nginx-certbot
#

while getopts d:p:e: option
do 
 case "${option}" 
 in 
 d) domains=(${OPTARG});; 
 p) data_path=${OPTARG};;
 e) email=${OPTARG};;
 m) staging=${OPTARG} 
 esac 
done 

#domains=(staging.kibana.wenuwork.cl)
rsa_key_size=4096
#data_path="../data/certbot"
#email="francisco@gmail.com" # Adding a valid address is strongly recommended
#staging=0 # Set to 1 if you're testing your setup to avoid hitting request limits

echo $domains
echo $data_path
echo $email
echo $staging