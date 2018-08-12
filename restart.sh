dc down
dc up -d
docker-compose run web rails db:create
docker-compose run web rails db:migrate
docker-compose run web rails db:migrate:reset
docker-compose run web rails db:seed
