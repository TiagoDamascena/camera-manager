up:
	docker-compose up -d

down:
	docker-compose down

logs:
	docker-compose logs -f -t

dev:
	- make up
	- make logs

shell:
	docker-compose exec camera-manager sh

update-node-modules:
	sudo docker cp camera-manager:/usr/src/app/node_modules .
	sudo chown -R $(USER) node_modules/