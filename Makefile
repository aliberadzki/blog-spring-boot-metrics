PROJECT_NAME="aliberadzki/spring-with-actuator"

build:
	docker build -t $(PROJECT_NAME) --rm .

run:
	docker run -it $(PROJECT_NAME):latest