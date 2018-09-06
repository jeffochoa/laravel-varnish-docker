# Requirements
- Docker
- Docker compose

# Install
Download and run:
```
docker-compose build
```

Then add the config for your local environment
```
cp .docker.env.example .docker.env
```

## Interacting with the containers
Use the interactive console
```
docker exec -it laravel-app sh
docker exec -it laravel-nginx sh
docker exec -it laravel-varnish sh
docker exec -it laravel-database sh
```

# TO DO
- Set up to run laravel commands locally? (not sure)
- node ?
- Supervisor container to run jobs
- Test redis config
- Update port from config file? (currently 8080)
- Update database port from config file