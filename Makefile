COMPOSE_FILE	:= ./srcs/docker-compose.yml
BUILD_MOD		:= rootless # production or rootless
IMAGE_NAMES		:= mariadb-${BUILD_MOD} nginx-${BUILD_MOD}

# Build, (re)create, start and attach to containers
up: build
	docker-compose -f ${COMPOSE_FILE} up -d

# View output from containers.
logs: 
	docker-compose -f ${COMPOSE_FILE} logs

# Build or rebuild services
build:
	docker-compose -f ${COMPOSE_FILE} build

# Start existing containers
start:
	docker-compose -f ${COMPOSE_FILE} start
# Stop services
stop:
	docker-compose -f ${COMPOSE_FILE} stop

# Stop and clean containers
down:
	docker-compose -f ${COMPOSE_FILE} down

# SIGKILL containers
kill:
	docker-compose -f ${COMPOSE_FILE} kill

# Remove unused images
clean-images:
	docker image rm -f ${IMAGE_NAMES}

# Remove containers
clean-containers: stop
	docker-compose -f ${COMPOSE_FILE} rm

clean: clean-containers clean-images
