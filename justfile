build:
    docker-compose build

up:
    docker-compose up -d

exec:
    docker-compose exec devcontainer bash

down:
    docker-compose down 

build-flake:
    docker-compose -f docker-compose.flake.yml build

up-flake:
    docker-compose -f docker-compose.flake.yml up -d

exec-flake:
    docker-compose -f docker-compose.flake.yml exec devcontainer bash

down-flake:
    docker-compose -f docker-compose.flake.yml down 
