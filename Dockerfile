FROM alpine:3.11
LABEL author="Serge NOEL <serge.noel@easylinux.fr>"

RUN apk add npm \ 
    && npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD launch /usr/local/bin/launch
CMD ["/usr/local/bin/launch"]
