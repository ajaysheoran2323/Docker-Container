
## Basic commands::

`docker swarm init `

`docker swarm join-token worker `

`docker swarm join-token manager`

`docker node ls `

`docker swarm leave`

`docker service create --name nginx --replica 3 nginx`

`docker service ls`

`docker service ps nginx`

`docker service scale nginx=8`


`docker node inspect self`

`docker node inspect worker1`

