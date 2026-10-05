FROM debian:bookworm-slim

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    bash \
    ca-certificates \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=America/Campo_Grande

RUN ln -snf "/usr/share/zoneinfo/${TZ}" /etc/localtime && \
    echo "${TZ}" > /etc/timezone

ENV APP_DIRECTORY=/app
ENV APP_NAME=app.bin
ENV APP_ARGS=

CMD ["sh", "-c", "exec \"$APP_DIRECTORY/$APP_NAME\" $APP_ARGS"]
