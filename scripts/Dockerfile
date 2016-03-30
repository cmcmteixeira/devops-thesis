
FROM library/ubuntu
WORKDIR .
EXPOSE 8080
EXPOSE 80

RUN mkdir -p /var/www
RUN apt-get install nginx -y
COPY ./conf/nginx.conf /etc/nginx/sites-enabled/nginx.conf

RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install nodejs
RUN npm install npm@latest
RUN npm install -g webpack -y
CMD ["nginx", "-g", "daemon off;"]

