FROM alpine:3.23.3

WORKDIR /app

RUN apk add --no-cache \
    bash \
    tzdata

ENV TZ=America/Campo_Grande

RUN ln -snf "/usr/share/zoneinfo/${TZ}" /etc/localtime && \
    echo "${TZ}" > /etc/timezone

ENV APP_DIRECTORY=/app
ENV APP_NAME=app.bin
ENV APP_ARGS=

CMD ["$APP_DIRECTORY/$APP_NAME", "$APP_ARGS"]