# test_job
#### Dockerfile test

docker build -t nginx-alpine .  
docker run -p 80:80 nginx-alpine


#### Packer test  
packer build packer_template.json  
docker import -c "ENTRYPOINT [\"nginx\", \"-g\", \"daemon off;\"]" nginx_alpine_image.tar local:packer_nginx  
docker run -d -p 80:80 local:packer_nginx  

Packer can't set entrypoint when we export image :(
