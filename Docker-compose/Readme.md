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
<name_of_the_service>:
      build: ~/dockerfiles/demo/
OR
      image: mysql:latest
      environtment:
        - "MYSQL_ROOT_PASSWORD = "xxxxxxx"
        - "MYSQL_ROOT_USER" = "xxxxxxx"
       ports:
        - "80:80"
        - "443:443"
       volumes:
        - "~/dockerfile/demo/testfile.config:/app"
        
```


## Sample `docker-compose.yml` file:

```
version: '3'

services:
   db:
     image: mysql:latest
     volumes:
       - myvol1:/var/lib/mysql
     restart: always
     environment:
       MYSQL_ROOT_PASSWORD: randompassword
       MYSQL_DATABASE: wordpress
       MYSQL_USER: admin
       MYSQL_PASSWORD: admin

   wordpress:
     depends_on:
       - db
     image: wordpress:latest
     ports:
       - "8000:80"
     restart: always
     environment:
       WORDPRESS_DB_HOST: db:3306
       WORDPRESS_DB_USER: wordpress
       WORDPRESS_DB_PASSWORD: wordpress
volumes:
    db_data:
```

## Compose file syntex:

A `docker-compose.yml` file is organized into four sections:

#### version	
      Specifies the Compose file syntax version. This guide will use Version 3 throughout.
#### services	
      In Docker a service is the name for a “Container in production”. This section defines the containers that will be started as a part of the Docker Compose instance.
#### networks	  
      This section is used to configure networking for your application. You can change the settings of the default network, connect to an external network, or define app-specific networks.
#### volumes	
      Mounts a linked path on the host machine that can be used by the container.
      
### `Services` section:
#### image	
        Sets the image that will be used to build the container. Using this directive assumes that the specified image already exists either on the host or on Docker Hub.
#### build	
        This directive can be used instead of image. Specifies the location of the Dockerfile that will be used to build this container.
#### restart	
      Tells the container to restart if the system restarts.
#### volumes	
       Mounts a linked path on the host machine that can be used by the container
#### environment	
        Define environment variables to be passed in to the Docker run command.
#### depends_on	
        Sets a service as a dependency for the current block-defined container
#### port	
        Maps a port from the container to the host in the following manner: host:container
#### links	
        Link this service to any other services in the Docker Compose file by specifying their names here.

     
## Task to complete:

  1. Create a docker-compose file and name it `docker-compopse.yaml`
  2. Create two services in this and both are ubuntu based.
  
  3. service one -  add environment variable for aws iam keys(check google) and copy a file from your local machine to s3 bucket ```(use s3 bucket name -  , use IAM keys - access key =, secret access key = , region = )``` HINT: You need to install `awscli` before you run copy command 
  4. service 2 -  use same s3 bucket and IAM keys and copy files from S3 to your local machine in another folder.
