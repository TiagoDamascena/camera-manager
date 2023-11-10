up:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs -f -t

build:
	docker-compose exec camera-manager npm run build

dev:
	- make up
	- make logs

run:
	docker-compose exec camera-manager npm run prod

shell:
	docker-compose exec camera-manager sh

update-node-modules:
	sudo docker cp camera-manager:/usr/src/app/node_modules .
	sudo chown -R $(USER) node_modules/