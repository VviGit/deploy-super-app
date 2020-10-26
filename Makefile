start-app: build run

stop-app: stop

build: ## build image
		@echo '-- Building image --'
		@git clone https://github.com/tomsquest/recruitement-exam-ops.git app
		@docker build -t superapp:latest .
		@rm -rf app

run: ## run container
		@docker run -p 3000:3000 --name superapp -d superapp:latest

start: ## start app
		@echo '-- Start app --'
		@docker start superapp

stop: ## stop app
		@echo '-- Stop app --'
		@docker stop superapp

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help