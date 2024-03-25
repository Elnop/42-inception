# 42 - Inception

This repository provides an automated service deployment for WordPress using the LEMP stack (Linux, Nginx, MySQL/MariaDB, PHP).

## Summary

1. [Dependencies](#dependencies)
2. [Usage](#usage)
3. [Parameters](#parameters)
	1. [Nginx](#parameters-nginx)
	2. [MySql](#parameters-mysql)
	3. [Wordpress](#parameters-wordpress)
4. [Start service](#Start service)

## Dependencies {#dependencies}

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/linux/#install-using-the-repository)
- [make (optional)](https://fr.wikipedia.org/wiki/Make)

## Usage {#usage}

```bash
git clone git@github.com:Elnop/42-inception.git lperroti-42-inception
```

## Parameters {#parameters}

Set all variables in /srcs/.env

### Nginx {#parameters-nginx}

- **NGINX_PORT** *443 (default)*

### MySql {#parameters-mysql}

- **MYSQL_ROOT_PASSWORD** *(generate if unset)*
- **MYSQL_USER** *(required)*
- **MYSQL_PASSWORD** *(required)*
- **BUILD_TYPE** *privileged (default) or rootless*

### Wordpress {#parameters-wordpress}

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