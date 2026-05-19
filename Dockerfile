FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY ["Uninove.Web/Uninove.Web.csproj", "Uninove.Web/"]
RUN dotnet restore "Uninove.Web/Uninove.Web.csproj"

COPY . .
WORKDIR /src/Uninove.Web
RUN dotnet publish "Uninove.Web.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .

EXPOSE 80
ENV ASPNETCORE_URLS=http://+:80
ENV DISABLE_HTTPS_REDIRECT=true
ENTRYPOINT ["dotnet", "Uninove.Web.dll"]
