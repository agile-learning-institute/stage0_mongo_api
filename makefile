# Makefile

.PHONY: local container down

# Run the application locally
test:
	make down
	docker compose --profile test up --detach
	# docker compose logs -f "mongodb_api"

# Build and run the Docker container
prod:
	make down
	docker build --tag ghcr.io/agile-learning-institute/stage0_mongo_api:latest .
	docker compose --profile prod up --detach
	# docker compose logs -f "mongo_api"

# Shut down testing containers and clean house
down:
	docker compose down mongodb mongodb_api mongodb_spa mongo_api mongo_spa
