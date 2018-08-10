# Usage
1.  `docker-machine create --driver virtualbox rails52`
    (1). `docker-machine start rails52`
2.  `eval $(docker-machine env rails52)`
3.  `docker-compose up --build -d`
4.  `docker-machine ssh rails52 -L 8080:localhost:9000`
5.  `docker exec -it rails_template_web_1 bash`
6.  `rails db:create`
