
# Networking basic commands:

`docker network ls`
`docker network rm <network-id>`
`docker network create --driver bridge <network-name>`
`docker network create --driver bridge --subnet --gateway --ip-range <network-name>`
`docker network create --driver overlay <network-name>`
`docker inspect <network-id>`


### To use docker overlay networking

Master node:
`docker swarm init ` --> it will get you a `join` command for worker node. Copy the command and paste on worker node

### TO create service(on leader node)

`docker service ls `
`docker service create --replicas 3 --network my-overlay-network --name nginx-serice nginx`
`docker service rm <service-id>`
