FROM gcc:latest AS builder

WORKDIR /app

COPY yoyo.c .

RUN gcc -o yoyo yoyo.c

FROM ubuntu:latest

WORKDIR /app

COPY --from=builder /app/yoyo .

CMD ["./yoyo"]

