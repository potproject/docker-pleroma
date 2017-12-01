# docker-pleroma (Unofficial)

Docker版Pleromaです。非公式です。developブランチを使用しており、バージョンアップに従い動かなくなる可能性大なので注意。  

Pleroma Original Repo:https://git.pleroma.social/pleroma/pleroma  


## Containers  
* elixir:1.5.2-alpine ([Docker Hub](https://hub.docker.com/_/elixir/))  
* postgres:9.6-alpine ([Docker Hub](https://hub.docker.com/_/postgres/))  

## Configuration  
 ``` config/config.exs ```  
 
 ``` config/dev.secret.exs ```

## Usage

```
docker-compose build

docker-compose run --rm web mix ecto.create

docker-compose run --rm web mix ecto.migrate

docker-compose up -d
```

コンパイルを行うため、 ``` docker-compose up -d ``` 後に起動まで数分かかります。  

try it http://localhost:4000/  

## LICENCE
AGPL v3