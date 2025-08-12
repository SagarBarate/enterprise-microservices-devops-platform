FROM rust:1.76-alpine AS builder
WORKDIR /app
COPY . .
RUN cargo build --release

FROM alpine:3.19
WORKDIR /app
COPY --from=builder /app/target/release/shipping .
EXPOSE 50051
CMD ["./shipping"]
