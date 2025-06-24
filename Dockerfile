# From MSM Utility Image
FROM ghcr.io/agile-learning-institute/stage0_mongodb_api:latest

# Default environment configuration values
# ENV MONGO_CONNECTION_STRING: mongodb://mongodb:27017/?replicaSet=rs0
# ENV INPUT_FOLDER=/input
# ENV AUTO_PROCESS=false
# ENV EXIT_AFTER_PROCESSING=false
# ENV LOAD_TEST_DATA=true
# ENV MONGO_DB_NAME=stage0
# ENV MONGODB_API_PORT=8081

# Copy files 
COPY input /input
