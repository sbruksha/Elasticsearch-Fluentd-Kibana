# Elasticsearch-Fluentd-Kibana

We use Docker Compose for setting up multiple containers and Fluentd to stream Docker logs from multiple instances of a Dockerized Spring Boot microservices, MongoDBs, NGINX to the Elastic Stack.

By combining Elasticsearch + Fluentd + Kibana we get a scalable, flexible, easy to use log collection and analytics. 


In this article we set four containers:
NGINX,
Fluentd,
Elasticsearch,
Kibana
