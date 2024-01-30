#!bin/bash
#build images
docker build -t karsajobs-ui:latest .
#cek daftar images
docker images

#ngirim docker ke docker hub
docker tag karsajobs-ui:latest wildanh/karsajobs-ui:latest

#login ke docker dengan pasword
cat ../dockerpasw.txt | docker login --username wildanh --password-stdin

#mengirim image ke dockerhub
docker push wildanh/karsajobs-ui:latest