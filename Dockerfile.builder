FROM golang:1.8-alpine

VOLUME /usr/local/go/src/github.com/digitalocean/do-agent

ENV GOARCH=amd64
ENV GOOS=linux
ENV CGO=0

RUN apk add --update \
        make \
        git

WORKDIR /usr/local/go/src/github.com/digitalocean/do-agent
