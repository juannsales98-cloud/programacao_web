# programacao_web

## Deploy

Este projeto é um aplicativo ASP.NET Core e pode ser implantado utilizando GitHub Actions para o Azure App Service.

Para configurar o deploy automático, siga estes passos:

1. Crie um Azure Web App para .NET 10.
2. No portal Azure, baixe o perfil de publicação do Web App.
3. No repositório GitHub, adicione os segredos:
   - `AZURE_WEBAPP_NAME`: nome do seu App Service.
   - `AZURE_WEBAPP_PUBLISH_PROFILE`: conteúdo do perfil de publicação.
4. Faça push para a branch `main`.

O workflow `.github/workflows/azure-webapp-deploy.yml` irá:

- restaurar dependências
- compilar o projeto
- publicar o app
- implantar no App Service

## Executar com Docker

Também é possível rodar o projeto em container Docker.

Para construir a imagem:

```bash
docker build -t programacao_web .
```

Para executar o container:

```bash
docker run -p 80:80 programacao_web
```

Depois, acesse:

```text
http://localhost
```
