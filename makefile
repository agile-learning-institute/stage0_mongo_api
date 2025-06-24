# Makefile

.PHONY: local container down

# Run the application locally
test:
	make down
	docker compose --profile batch_test up --detach
	docker compose logs -f "stage0_mongodb_api"

# Build and run the Docker container
container:
	make down
	docker build --tag ghcr.io/agile-learning-institute/stage0_mongo_api:latest .
	docker compose --profile interactive_test up --detach

# Shut down testing containers and clean house
down:
	docker compose down mongodb stage0_mongodb_api stage0_mongo_api
