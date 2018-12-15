# Spring Boot - Prometheus - Grafana example

This is an example setup of simple spring boot application iwth out-of-the-box micrometer
metrics exported to prometheus and grafana

```
[Spring Boot] <-- [Prometheus] <-- [Grafana]
```

Attached docker-compose sets up 3 containers linked as depicted above.

## running locally

To run project you need docker and docker-compose on your path. 
For convenience i provided Makefile. Just run: 
```bash
make build && make run
```