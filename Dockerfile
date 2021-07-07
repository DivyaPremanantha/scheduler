FROM golang:latest
RUN mkdir /scheduler
ADD . /scheduler
WORKDIR /scheduler
RUN go build -o build .
ENTRYPOINT ["/scheduler/build"]
