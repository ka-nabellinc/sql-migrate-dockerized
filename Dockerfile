FROM golang:1.19.5-alpine3.17

ENV SQL_MIGRATE_VERSION 1.3.0


RUN apk add build-base
RUN go install github.com/rubenv/sql-migrate/...@v${SQL_MIGRATE_VERSION}

CMD [ "which", "sql-migrate" ]
