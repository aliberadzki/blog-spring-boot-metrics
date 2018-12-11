PROJECT_NAME="aliberadzki/spring-with-actuator"

build:
	docker build -t $(PROJECT_NAME) --rm .

run:
	docker run -it -p 8081:8080 $(PROJECT_NAME):latest