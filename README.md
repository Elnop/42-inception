# 42 - INCEPTION

```bash
# Pour construire en mode production
docker-compose build --build-arg BUILD_TYPE=production --build-arg NGINX_PORT=443

# Pour construire en mode rootless
docker-compose build --build-arg BUILD_TYPE=rootless --build-arg NGINX_PORT=3000
```