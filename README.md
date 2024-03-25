# 42 - Inception

This repository provides an automated service deployment for WordPress using the LEMP stack (Linux, Nginx, MySQL/MariaDB, PHP).

## Summary

1. [Dependencies](#dependencies)
2. [Usage](#usage)
3. [Parameters](#parameters)
	- [Nginx](#nginx-parameters)
	- [MySql](#mysql-parameters)
	- [Wordpress](#wordpress-parameters)
4. [Start service](#Start service)

## Dependencies

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/linux/#install-using-the-repository)
- [make (optional)](https://fr.wikipedia.org/wiki/Make)

## Usage

```bash
git clone git@github.com:Elnop/42-inception.git lperroti-42-inception
```

## Parameters

Set all variables in /srcs/.env

### Nginx parameters

- **NGINX_PORT** *443 (default)*

### MySql parameters

- **MYSQL_ROOT_PASSWORD** *(generate if unset)*
- **MYSQL_USER** *(required)*
- **MYSQL_PASSWORD** *(required)*
- **BUILD_TYPE** *privileged (default) or rootless*

### Wordpress parameters

## Start service

using [make](https://fr.wikipedia.org/wiki/Make)

**build and start service as a deamon**

```bash
make

```

**Stop service and clean container and images**
```bash
make clean
```

[more make rules](./Makefile)

## Links

- [PHP Doc](https://www.php.net/docs.php)

- [Docker Reference](https://docs.docker.com/reference/)

- [Yobasystems alpine-mariadb](https://github.com/yobasystems/alpine-mariadb)

- [Digitalocean how-to-install-wordpress-with-docker-compose](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose#step-1-defining-the-web-server-configuration)