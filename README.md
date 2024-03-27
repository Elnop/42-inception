# 42 - Inception

This project serves as a learning exercise, employing Docker with Alpine to facilitate automated deployment of WordPress using the LEMP stack (Linux, Nginx, MySQL/MariaDB, PHP).

## Summary

1. [Host dependencies](#host-dependencies)
2. [Usage exemple](#usage-exemple)
	- [Download](#download)
	- [Minimal setup](minimal-setup)
3. [Parameters](#parameters)
	- [Nginx](#nginx-parameters)
	- [MySql](#mysql-parameters)
	- [Wordpress](#wordpress-parameters)
	- [Build Type](#build-type)
4. [Ready for advanced use](#ready-for-advanced-use)
5. [Links](#links)

## Host dependencies

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/linux/#install-using-the-repository)
- [make (optional)](https://fr.wikipedia.org/wiki/Make)

## Usage exemple

### Download

```bash
git clone git@github.com:Elnop/42-inception.git lperroti-42-inception
cd lperroti-42-inception
```

### Minimal setup

```bash
cp ./srcs/.env.exemple ./srcs/.env
cat ./srcs/.env
```

replace the "<>" tags with your information in ``./srcs/.env`` file

more informations of [parameters](#parameters)

### Ready to use

**build and start service as a daemon**

```bash
make
```

**Stop service and clean docker**
```bash
make clean
```

## Parameters

Set all variables in /srcs/.env

### Nginx parameters

- **NGINX_PORT** *443 (default)*

### MySql parameters

- **MYSQL_ROOT_PASSWORD** *(generate if unset)*
- **MYSQL_USER** *(required)*
- **MYSQL_PASSWORD** *(required)*

### Wordpress parameters

nothing..

### Build Type

```BUILD_TYPE``` can be set to **privileged** or **rootless**

privileged means that docker has root permissions

scripts and service configurations changed to avoid permissions problems

## Ready for advanced use

You can build, start, stop, clean docker with make

Read [Makefile](./Makefile), ``man docker`` and ``man docker-compse``

## Links

- [PHP Doc](https://www.php.net/docs.php)
- [PHP Supported Versions](https://www.php.net/supported-versions.php)
- [Docker Reference](https://docs.docker.com/reference/)
- [Yobasystems Docker Alpine Mariadb](https://github.com/yobasystems/alpine-mariadb)
- [Yobasystems Alpine PHP Wordpress](https://github.com/yobasystems/alpine-php-wordpress)
- [Digital Ocean how to install wordpress with docker-compose](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose#step-1-defining-the-web-server-configuration)
