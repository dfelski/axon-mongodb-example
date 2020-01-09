# Axon MongoDB example

Simple Axon Framework setup to use MongoDB as event store and serializing events as JSON.

Start the application with `doocker-compose up` and test it using `curl -X PUT localhost:8080` to add data and `curl localhost:8080` to retrieve the amount of it.

You can use the [mongo-express](https://github.com/mongo-express/mongo-express] instance running on `localhost:8081` to check the stored events.