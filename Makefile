postgres:
	docker run --name simple-postgres -p 5433:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=root -e POSTGRES_DB=postgres -d postgres

createdb:
	docker exec -it simple-postgres createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it simple-postgres dropdb simple_bank

migrateup:
	migrate -path db/migration -database "postgresql://root:root@localhost:5433/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://root:root@localhost:5433/simple_bank?sslmode=disable" -verbose down

sqlc:
	sqlc generate

.PHONY: postgres createdb dropdb migrateup migratedown sqlc