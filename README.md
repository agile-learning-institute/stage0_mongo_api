# stage0 Mongo API

This is a mongoDB Configuration API, based on the [stage0_mongodb_api](https://github.com/agile-learning-institute/stage0_mongodb_api) utility. It provides a versioned configuration as code utility for the Stage0 product. 

## Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (includes Docker Compose)
- [Make](https://www.gnu.org/software/make/) which is standard on most OS's
- [MongoDB Compass](https://www.mongodb.com/try/download/compass) to verify expected configurations

## Contributing Guide
The configurations here are versioned, it's important that you not change any of the existing dictionaries or types. You can update a collection configuration file to define a new version of the collection, and create a new dictionaries as needed. You can add a new version to the enumerators data file, or define new custom types as needed. 

Edit the appropriate files. Then use ``make test`` and visit [http://localhost:8082](http://localhost:8082). You can edit the files in place, and refresh the page to load new configurations. You may need to drop the database in order to re-test processing, but the service does not need to be restarted.

```
INPUT_FOLDER/
├── collections/                # Collection Configuration Files      
│   ├── bot.yaml            
│   ├── chain.yaml          
│   ├── ...
│   └── workshop.yaml
├── data/                       # Test data and Enumerators
│   ├── enumerators.json    
│   ├── bot.1.0.0.1.json    
│   ├── ...
│   └── workshop.1.0.0.1.yaml
└── dictionary/                 # Data Dictionaries (Simple Schema)
    ├── types/                  # Simple Schema custom types
    │   ├── word.yaml
    │   ├── sentence.yaml
    │   └── ...
    ├── bot.1.0.0.1.yaml
    ├── ...
    └── workshop.1.2.3.4.yaml
```

## Developer Commands
The make-test and make-prod commands both tail the API logs. You will have to press Ctrl-C to stop tailing the logs.

```bash
## Test /input configurations interactively
make test

## Build and run the container to test before making a PR
make prod

## Shut down services after testing
make down
```

## Reference Information
- [Open API Specifications](./docs/openapi.yaml) for this API
- [API curl examples](https://github.com/agile-learning-institute/stage0_mongodb_api/blob/main/CONTRIBUTING.md#curl-examples) if you want to do CLI based testing.
- [Simple Schema standards](https://github.com/agile-learning-institute/stage0/blob/main/SIMPLE_SCHEMA.md) to understand the schema language used. 
- [MongoDB Utility Reference](https://github.com/agile-learning-institute/stage0_mongodb_api/blob/main/REFERENCE.md) has configuration details.
- [Stage0 Data Catalog](https://github.com/agile-learning-institute/stage0/blob/main/specifications/data_catalog.yaml) that initialized this repo.

## Test Data Patterns

### ObjectID Collection Mapping
All ObjectID values in test data files follow a consistent pattern where the first 3 characters indicate the collection type. All ObjectIDs must be 24-character hex strings using only characters 0-9 and A-E.

| Collection | Prefix | Example ObjectID |
|------------|--------|------------------|
| User | AAA | AAA000000000000000000001 |
| Bot | BBB | BBB000000000000000000001 |
| Chain | CCC | CCC000000000000000000001 |
| Exercise | DDD | DDD000000000000000000001 |
| Execution | EEE | EEE000000000000000000001 |
| Workshop | 000 | 000000000000000000000001 |
| Conversation | 111 | 111000000000000000000001 |
| Runbook | 222 | 222000000000000000000001 |
| Template | 333 | 333000000000000000000001 |

Test data is locked in, so feel free to use this to create end-to-end testing