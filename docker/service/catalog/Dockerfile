FROM golang:latest

WORKDIR /go/src/app

RUN git clone https://github.com/akolpakov-somehash/headless-ecom-catalog-service.git .

RUN go build -o catalog

CMD ["./catalog"]