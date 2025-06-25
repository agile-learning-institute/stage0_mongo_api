# stage0 Mongo API

This is a mongoDB Configuration API, based on the [stage0_mongodb_api](https://github.com/agile-learning-institute/stage0_mongodb_api) utility.

## Prerequisites
- [Stage0 Developers Edition](https://github.com/agile-learning-institute/stage0/blob/main/developer_edition/README.md)

## Developer Commands
```bash
## Test /input configurations in batch mode
make test

## Build and run the container in interactive mode to use the API
make container

## Shut down services after testing
make down
```

## API
See stage0_mongodb_api [Open API Specifications](https://github.com/agile-learning-institute/stage0_mongodb_api/blob/main/docs/openapi.yaml) for API endpoint details
See stage0_mongodb_api [Reference](https://github.com/agile-learning-institute/stage0_mongodb_api/blob/main/REFERENCE.md) for configuration details.
See stage0 [Simple Schema standards](https://github.com/agile-learning-institute/stage0/blob/main/SIMPLE_SCHEMA.md) to understand the schema language used. 

## Curl Examples
```bash
# List Collection Configurations
curl -X GET http://localhost:8081/api/collections/

# Get a Collection Config
curl -X GET http://localhost:8081/api/collections/{collection_name}

# Process All Collections
curl -X POST http://localhost:8081/api/collections/

# Process Specific Collection
curl -X POST http://localhost:8081/api/collections/{collection_name}

# Render BSON Schema
curl -X GET http://localhost:8081/api/render/bson_schema/{version_name}

# Render JSON Schema
curl -X GET http://localhost:8081/api/render/json_schema/{version_name}

```

## Contributing Guide
Edit the appropriate files. 
```
INPUT_FOLDER/
├── collections/            # Collection Configuration Files
│   ├── bot.yaml                # Stage0 Bots
│   ├── chain.yaml              # A Chain of Exercises - a Template for a Workshop
│   ├── conversation.yaml       # A conversation with an LLM
│   ├── execution.yaml          # An execution of a Runbook
│   ├── runbook.yaml            # A runbook that is run by a bot
│   ├── template.yaml           # A stage0 Template Repository
│   ├── user.yaml               # A User of the System
│   └── workshop.yaml           # A record of a specific design thinking workshop
├── data/                   # Test data - versioned 
│   ├── enumerators.json    # Enumerators definitions 
│   └── bot.1.0.0.1.json    # Bot collection test data - versioned
└── dictionary/             # versioned schemas
    ├── types/              # custom types (not versioned)
    │   ├── word.yaml
    │   ├── sentence.yaml
    │   └── ...
    ├── bot.1.0.0.yaml      # Simple Schema for the Bot collection
    └── ...
```

