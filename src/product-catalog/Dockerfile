FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY . .
RUN go build -o product-catalog .

FROM alpine:3.19
WORKDIR /app
COPY --from=builder /app/product-catalog .
EXPOSE 3550
CMD ["./product-catalog"]
