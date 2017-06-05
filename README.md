# Pre-requisites

You must have Docker installed to run this database instance. Check the [Installation Guide](https://docs.docker.com/engine/installation/) if you haven't got it installed.

# Coding

To start or stop the database, build the sr-database image and run it:

```bash
make build
make run-dev
```
Allow up to 2 minutes for mysql to start up after `run-dev` before testing the connection.

You should be aware that if you remove the docker container, any data added to the database beyond what is in setup.sql will be wiped.  This is intentional so that you can quickly revert to a clean slate whenever you desire.

If you alter setup.sql, make sure to `make build` again to copy those changes into the docker image.  Make sure to test your changes before `make build`, otherwise `make run-dev` will not be able to run the MySQL instance and it will kill the container.

# Notes

This repo is based off of [https://github.com/dwmkerr/node-docker-microservice](https://github.com/dwmkerr/node-docker-microservice).  You can read more about it here: [http://www.dwmkerr.com/learn-docker-by-building-a-microservice/](http://www.dwmkerr.com/learn-docker-by-building-a-microservice/)
