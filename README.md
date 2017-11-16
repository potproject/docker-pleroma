# docker-pleroma (Unofficial)

Docker版Pleromaです。非公式です。developブランチを使用しており、バージョンアップに従い動かなくなる可能性大なので注意。  

Pleroma Original Repo:https://git.pleroma.social/pleroma/pleroma  

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

try it http://localhost:4000/

## LICENCE
AGPL