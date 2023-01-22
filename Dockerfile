FROM golang:1.19.5-alpine3.17 AS builder

ENV SQL_MIGRATE_VERSION 1.3.0


RUN apk add build-base
RUN go install github.com/rubenv/sql-migrate/...@v${SQL_MIGRATE_VERSION}


FROM alpine:3.17

COPY --from=builder /go/bin/sql-migrate /bin/sql-migrate
COPY ./prepare-sql-migrate.sh /usr/local/bin/prepare-sql-migrate
