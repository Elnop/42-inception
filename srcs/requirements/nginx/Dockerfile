FROM debian:bullseye

EXPOSE 443

RUN apt-get update -y
RUN apt-get install -y nginx openssl

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/certificate.crt -keyout /etc/nginx/ssl/certificate.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=lperroti.42.fr/UID=lperroti"

RUN mkdir -p /run/nginx

RUN mkdir -p /var/www/wordpress

CMD ["nginx", "-g", "daemon off;"]