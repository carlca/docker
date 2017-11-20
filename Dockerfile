FROM golang
 
ADD . /go/src/github.com/carlca/docker
RUN go install github.com/carlca/docker/webserver.go
ENTRYPOINT /go/bin/webserver
 
EXPOSE 8080