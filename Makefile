createdb:
	createdb --username=postgres --owner=postgres go_finance

postgres:
	docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=mar15ma02li82 -d postgres:14-alpine

migrateup:
	migrate -path db/migration -database "postgresql://postgres:postgres@localhost:5432/go_finance?sslmode=disable" -verbose up

migrationdrop:
	migrate -path db/migration -database "postgresql://postgres:postgres@localhost:5432/go_finance?sslmode=disable" -verbose down