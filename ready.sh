docker-compose up --build -d
docker-compose run web rails db:create
docker-compose run web rails db:migrate