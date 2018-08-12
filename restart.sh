docker-compose down
docker-compose up -d
docker-compose run web rails db:create
docker-compose run web rails db:migrate:reset
docker-compose run web rails db:seed
