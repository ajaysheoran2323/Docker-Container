
FROM       ubuntu:latest
MAINTAINER ajay.kumar.awscloud@gmail.com

ENV AWS_ACCESS_KEY BLAHxxxxxxxxxxxBLAH
ENV AWS_SECRET_KEY blahxxxxxxxxccxxxxxxxBlaH
ENV AWS_DEFAULT_REGION us-east-1

RUN apt-get update && apt-get install -y nginx && apt-get install awscli


EXPOSE 80
