FROM alpine
RUN apk --update --no-cache add nginx
RUN mkdir /run/nginx
RUN echo -e "server {\n	listen 80 default_server;\n	root /var/www/localhost/htdocs;\n}" > /etc/nginx/http.d/default.conf
RUN echo -e "<html>\n<head>\n<title>Epam test</title>\n</head>\n<body><h2>some <i>tags</i></h2><b>another tag</b>\n</body>\n</html>" > /var/www/localhost/htdocs/index.html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
