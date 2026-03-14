# Docker App Runner

Imagem para executar um binario em `/app`.

Suporte incluso:

- timezone fixo em `America/Campo_Grande`;
- configuracao da aplicacao por variaveis de ambiente.

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
```

## Variaveis de ambiente

- `APP_DIRECTORY`: diretorio onde esta o binario (padrao `/app`);
- `APP_NAME`: nome do binario (padrao `app.bin`);
- `APP_ARGS`: argumentos repassados para o binario;
- `TZ`: timezone da imagem (padrao `America/Campo_Grande`).
