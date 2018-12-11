PROJECT_NAME="aliberadzki/spring-with-actuator"

build:
	docker build -t $(PROJECT_NAME) --rm .

run:
	docker-compose up -d

stop:
	docker-compose down