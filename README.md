# Docker App Runner

Imagem mínima (Debian/glibc) para executar um binário em `/app`.

Compatível com binários nativos que dependem de **glibc** (ex.: `dart compile exe`).
Não use Alpine/musl para esse tipo de executável.

Suporte incluso:

- timezone fixo em `America/Campo_Grande`;
- configuração da aplicação por variáveis de ambiente.

## Uso com docker-compose

Exemplo de `docker-compose.yml`:

```yaml
services:
  app:
    image: carvaldo/app-runner:latest
    environment:
      APP_DIRECTORY: /app
      APP_NAME: app.bin
      APP_ARGS: ""
      TZ: America/Campo_Grande
    volumes:
      - ./app.bin:/app/app.bin
```

## Variáveis de ambiente

- `APP_DIRECTORY`: diretório onde está o binário (padrão `/app`);
- `APP_NAME`: nome do binário (padrão `app.bin`);
- `APP_ARGS`: argumentos repassados para o binário;
- `TZ`: timezone da imagem (padrão `America/Campo_Grande`).
