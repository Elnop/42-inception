# 42 - Inception

automatic service deployment Wordpress LEMP (Linux Nginx MySQL/MariaDB PHP.)

## dependencies

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/linux/#install-using-the-repository)
- [make (optional)](https://fr.wikipedia.org/wiki/Make)

## Usage

## Parameters

set all variables in /srcs/.env

### Nginx

- **NGINX_PORT** *443 (default)*

### MySql

- **MYSQL_ROOT_PASSWORD** *(generate if unset)*
- **MYSQL_USER** *(required)*
- **MYSQL_PASSWORD** *(required)*
- **BUILD_TYPE** *privileged (default) or rootless*

### 

## Start Server

using [make](https://fr.wikipedia.org/wiki/Make)

```bash
make

```

**stop server and clean container and images**
```bash
make clean
```

[more make rules](./Makefile)