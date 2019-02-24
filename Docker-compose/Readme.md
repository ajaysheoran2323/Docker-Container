# Docker Compose


Note : For docker-compose create a file `docker-compose.yml` just like we use to create a file for docker `Dockerfile`. Try to kee the syntex as it is.

## What is Docker Compose:
  It is recipe of services that creates an application and the `docker-compose.yml` directs how the services are mixed together. Easy - its can create a multi-network containers and give directions to them how to behave with each other
  
  
## Why Docker Compose ?

1. There are number of reason, the main reason is its very easy to deploy with docker-compose for multiple environment(dev, prod, uat, test)
2. Destructive testing, E2E testing.


## How to Docker compose ? How to create `docker-compose.yml`: 
```
version: "2"
  services: 
<name_of_the_service>:
      build: ~/dockerfiles/demo/
OR
      image: nginx:1.0.1
      environtment:
        - "AWS_ACCESS_KEY_ID = "xxxxxxx"
        - "AWS_SECRET_KEY" = "xxxxxxx"
       ports:
        - "80:80"
        - "443:443"
       volumes:
        - "~/dockerfile/demo/testfile.config:/app"
        
```
