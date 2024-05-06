# List of microservices
SERVICES := db catalog sale server fronted

.PHONY: all $(SERVICES) stop

# Default target
help: 
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "  all: Start all services"
	@echo "  stop: Stop all services"
	@echo "  $(SERVICES): Start individual services"

all: $(SERVICES)

# Custom command definitions for each service
db:
	@echo "Starting Database..."
	@docker-compose -f ./docker-compose.yml up mysql -d
	@sleep 5

fronted:
	@echo "Starting Frontend..."
	@cd ../frontend && ng serve &
	@sleep 3

server:
	@echo "Starting Web Server"
	@cd ../webserver && npx tsc && node dist/app.js &
	@sleep 3

catalog:
	@echo "Starting Catalog Service"
	@cd ../catalog-service && go run main.go &
	@sleep 3

sale:
	@echo "Starting Sale Service"
	@cd ../sales-service && go run main.go &
	@sleep 3

# Stop all services
stop:
	@echo "Stopping all services..."
	-@docker-compose -f ./docker-compose.yml down
	-@pkill -f "ng serve"
	-@pkill -f "node dist/app.js"
	-@pkill -f "go run main.go"
