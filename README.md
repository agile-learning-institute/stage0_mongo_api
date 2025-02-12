# mongoSchemaManagerTemplate
This is the template for using the mongoSchemaManager container. You can delete the sections below as you complete each setup.

- [ ] Update [Dockerfile](./Dockerfile)

Update the Dockerfile to provide environment variable values for your configuration. The commented values are the same as the default values, so if you don't set one that is the value that will be used. 

- [ ] Update [makefile](./makefile)

Update the makefile to provide the container name you will use when building the container. 

## Confirm basic configurations

- [ ] run ``make local`` and confirm that you get a log file ending with ``Processing completed successfully!, exited with code 0``
- [ ] run ``make container`` and confirm that you get a log file ending with ``Processing completed successfully!, exited with code 0`` 

## Getting Started

At first, you should start by completing the following steps for one collection at a time. This will make configuration errors eaiser to find and correct.

- [ ] Define your Collection in the [configurations/collections folder](./configurations/collections/)

You can rename and use the existing [sample.json](./configurations/collections/sample.json) file, for the simplest possible configuration. See [collections configuration files](https://github.com/agile-learning-institute/mongoSchemaManager/blob/main/docs/REFERENCE.md#collections-configuration-files) in the reference for details.

- [ ] Build the Schema. 

You can rename and use the existing [sample-1.0.0.json](./configurations/schemas/sample-1.0.0.json) schema file. You can create any valid bson schema, but start simple and add constraints incrementally.

- [ ] Test your schema using the ``make local`` command to confirm that your schema is valid. Look for that ``Processing completed successfully!``" message

## Your Are Started!
You can use any valid mongodb BSON schema. If you want to build a test databasee, take advantage of msm custom types, or enumerator management features you can continue with the following steps. 


- [ ] Implement [Custom Types](https://github.com/agile-learning-institute/mongoSchemaManager/blob/main/docs/REFERENCE.md#msmtype) in your schema to eaisly add constraints. Then test again.

- [ ] Define your [Enumerations](https://github.com/agile-learning-institute/mongoSchemaManager/blob/main/docs/REFERENCE.md#enumerations) in the [enumerators.json file](./configurations/enumerators/enumerators.json). 

- [ ] Implement [Enumerated Types](https://github.com/agile-learning-institute/mongoSchemaManager/blob/main/docs/REFERENCE.md#msmenums) in your schema, then Test again.

- [ ] Create Test Data

If you want to create a test database with some set of testing data pre-loaded, you will want to create the test data files in the [testData](./configurations/testData/) folder. See [Loading Test Data](https://github.com/agile-learning-institute/mongoSchemaManager/blob/main/docs/REFERENCE.md#loading-test-data) in the reference for details.

That should get you started. See the [official reference](https://github.com/agile-learning-institute/mongoSchemaManager/blob/main/docs/REFERENCE.md) on GitHub for more information on how to configure indexes and migrations.

YOUR README BELOW
--------------------------------------
# Your Database Project
Describe your project here, at a minimum you should list and describe the collections. 

## Prerequisites
- [Docker](https://www.docker.com/products/docker-desktop/)

## Currently Deployed Schema documentation
View [OpenApi specifications](https://flatballflyer.github.io/testSchemaManager/) for the collections

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