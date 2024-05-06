FROM golang:latest

WORKDIR /go/src/app

RUN git clone https://github.com/akolpakov-somehash/headless-ecom-sales-service.git .

RUN go build -o sale

CMD ["./sale"]