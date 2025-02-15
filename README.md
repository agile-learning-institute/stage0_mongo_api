# stage0 Mongodb

This is the stage0 MongoDB Schema Manager. 

## Prerequisites
- [Docker](https://www.docker.com/products/docker-desktop/)

## Currently Deployed Schema documentation
See schema configurations, test data, and other configuration files in the [configurations](./configurations/) folder. 

View [OpenApi specifications](https://flatballflyer.github.io/testSchemaManager/) for the collections schema's.

Learn more about the Mongo Schema Manager tool, and how configuration files are used in the [official documentation](https://github.com/agile-learning-institute/mongoSchemaManager/blob/main/docs/REFERENCE.md). 

## Testing your configurations locally
```bash
make local
```

## Build and test the container 
```bash
make container
```

## Shut down services after testing
```bash
make down
```