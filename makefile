# Makefile

.PHONY: local container down

# Run the application locally
local:
	make down
	docker compose --profile msmtest up --detach
	docker-compose logs -f "msm"
	rm -rf ./docs/
	mkdir -p ./docs/
	ls -1 ./configurations/openApi | grep -v empty | xargs -I{} mv ./configurations/openApi/{} ./docs/

# Build and run the Docker container
container:
	make down
	docker build --tag local/test:latest .
	docker compose --profile testing up --detach
	docker-compose logs -f "test"

# Shut down testing containers and clean house
down:
	docker compose --profile msmtest down
	docker compose --profile testing down
	docker image prune -f
	docker volume prune -f