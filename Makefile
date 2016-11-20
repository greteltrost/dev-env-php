CURRENT_DIRECTORY := $(shell pwd)
export COMPOSE_PROJECT_NAME = 'dev'

up:
	@docker-compose up;

rebuild:
	@docker-compose up --build;

down:
	@docker-compose down;

clean:
	sudo rm -rf volumes/*

shell:
	@docker-compose exec web bash

mysql-cli:
	@docker-compose exec database mysql -u database -pdatabase database

theme:
	$(info Not implemented)

artisan:
	@docker-compose run php-cli \
	php /src/artisan $(CMD)

test:
	@docker-compose run php-cli \
	php /src/vendor/bin/phpunit
