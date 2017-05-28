# Pre-requisites

You must have Docker installed to run this database instance. Check the [Installation Guide](https://docs.docker.com/engine/installation/) if you haven't got it installed.

# Coding

To start or stop the database, build the sr-database image and run it:

```bash
cd ./sr-database
docker build -t sr-database .
docker run -it -p 3306:3306 sr-database
```

# Notes

This repo is based off of [https://github.com/dwmkerr/node-docker-microservice](https://github.com/dwmkerr/node-docker-microservice).  You can read more about it here: [http://www.dwmkerr.com/learn-docker-by-building-a-microservice/](http://www.dwmkerr.com/learn-docker-by-building-a-microservice/)
