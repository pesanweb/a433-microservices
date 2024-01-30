#!bin/bash
#build images
docker build -t karsajobs:latest .
#cek daftar images
docker images

#ngirim docker ke docker hub
docker tag karsajobs:latest wildanh/karsajobs:latest

#login ke docker dengan pasword
cat ../dockerpasw.txt | docker login --username wildanh --password-stdin

#mengirim image ke dockerhub
docker push wildanh/karsajobs:latest