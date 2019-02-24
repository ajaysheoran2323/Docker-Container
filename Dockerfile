
FROM       ubuntu:latest
MAINTAINER ajay.kumar.awscloud@gmail.com

ENV AWS_ACCESS_KEY BLAHxxxxxxxxxxxBLAH
ENV AWS_SECRET_KEY blahxxxxxxxxccxxxxxxxBlaH
ENV AWS_DEFAULT_REGION us-east-1
WORKDIR /app/
ADD https://example.com/image.taf /app/
COPY ~/dockerfiles/demo/testconfig.config /root/
VOLUME /myvol
ARG user
RUN apt-get update && apt-get install -y nginx && apt-get install awscli

ENTRYPOINT nginx service start      #you can use CMD also, but CMD can be overwritten by 'docker run -d image_name CMD'
#CMD nginx service start
EXPOSE 80
