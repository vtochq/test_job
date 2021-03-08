# test_job
start Docker
docker build -t nginx-alpine .

packer build packer_template.json
docker import nginx_alpine_image local:packer_nginx
docker run -d -p 80:80 local:packer_nginx "/usr/sbin/nginx"
