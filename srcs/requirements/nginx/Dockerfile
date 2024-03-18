FROM debian:bullseye

RUN apt-get update -y
RUN apt-get install -y nginx openssl

COPY ./conf/nginx.conf /etc/nginx/conf.d

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/certificate.crt -keyout /etc/nginx/ssl/certificate.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=lperroti.42.fr/UID=lperroti"

EXPOSE 443

RUN mkdir -p /run/nginx

CMD ["nginx", "-g", "daemon off;"]