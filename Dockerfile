#syntax=docker/dockerfile:1

# Alpine is chosen for its small footprint; running version 1.16 alpine
FROM golang:1.16-alpine
#1.16-alpine

WORKDIR /app

# Download necessary Go modules
COPY go.mod ./
COPY go.sum ./
RUN go mod download

#copies source code onto image
COPY *.go ./

#static application in rootfilesystwm
RUN docker build -t internhw:latest -f .Dockerfile .
#/Dockerfile .
#build -o /docker-gs-ping


EXPOSE 8080

#command to execute when image is used to start a container
CMD [ "internhw" ] 
#app
#