#!bin/bash
#build images
docker build -t item-app:v1 .
#cek daftar images
docker images

#ngirim docker ke docker hub
docker tag item-app:v1 wildanh/item-app:v1

cat ../dockerpasw.txt | docker login --username wildanh --password-stdin

docker push wildanh/item-app:v1