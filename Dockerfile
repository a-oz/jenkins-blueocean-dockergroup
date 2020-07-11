FROM jenkinsci/blueocean:latest

USER root

# docker / shadow
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" > /etc/apk/repositories \
    && echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && apk add --update docker shadow curl
    
USER jenkins
