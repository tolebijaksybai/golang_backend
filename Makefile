postgres:
	docker run --name simple-postgres -p 5433:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -e POSTGRES_DB=postgres -d postgres

createdb:
	docker exec -it simple-postgres createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it simple-postgres dropdb simple_bank

migrateup:
	migrate -path db/migration -database "postgresql://root:root@localhost:5433/simple_bank?sslmode=disable" -verbose up

migrateup1:
	migrate -path db/migration -database "postgresql://root:root@localhost:5433/simple_bank?sslmode=disable" -verbose up 1

migratedown:
	migrate -path db/migration -database "postgresql://root:root@localhost:5433/simple_bank?sslmode=disable" -verbose down

migratedown1:
	migrate -path db/migration -database "postgresql://root:root@localhost:5433/simple_bank?sslmode=disable" -verbose down 1

sqlc:
	sqlc generate

test:
	go test -v -count=1 -cover ./db/sqlc

server:
	go run main.go

mock:
	mockgen -destination db/mock/store.go github.com/tolebijaksybai/golang_backend/db/sqlc Store

.PHONY: postgres createdb dropdb migrateup migratedown migrateup1 migratedown1 sqlc test server mock