```
sudo apt remove golang-go
sudo apt autoremove

go version

sudo rm -rf /usr/local/go

wget https://go.dev/dl/go1.23.5.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go1.23.5.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
source ~/.bashrc
go version


sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update

sudo apt install golang-go

go version
```

```
sudo apt update
sudo apt install snapd

sudo snap install sqlc
sqlc version
```

```
package main

import (
	"fmt"
)

func main() {
	fmt.Println("Hello, World!")
	fmt.Println("Нажмите Enter, чтобы выйти...")
	fmt.Scanln() // Ожидание ввода
}
```

```
go run main.go
go build main.go
GOOS=windows GOARCH=amd64 go build -o main.exe main.go
```

```
docker pull postgres
docker run --name simple-postgres \
  -p 5433:5432 \
  -e POSTGRES_USER=root \
  -e POSTGRES_PASSWORD=root \
  -e POSTGRES_DB=simple_bank \
  -d postgres
  
ContainerName=simple-postgres

docker exec -it simple-postgres psql -U root
select now();

\l
docker logs simple-postgres | docker logs -f simple-postgres
docker exec -it simple-postgres psql -U postgres

migrate create -ext sql -dir db/migration -seq init_schema

docker exec -it simple-postgres sh
createdb --username=root --owner=root simple_bank
psql simple_bank | psql -U root -d simple_bank
dropdb simple_bank

SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'simple_bank' AND pid <> pg_backend_pid();

docker exec -it simple-postgres createdb --username=root --owner=root simple_bank
docker exec -it simple-postgres psql -U root simple_bank
docker exec -it simple-postgres dropdb simple_bank

make postgres
make createdb
make dropdb 
    
migrate -path db/migration -database "postgresql://root:root@localhost:5433/simple_bank?sslmode=disable" -verbose up
migrate -path db/migration -database "postgresql://root:root@localhost:5433/simple_bank?sslmode=disable" -verbose down

go mod init github.com/tolebijaksybai/golang_backend
go mod tidy

https://github.com/techschool/simplebank/blob/master/db/query/transfer.sql

go test ./db/sqlc

go get github.com/lib/pq
go mod tidy

go get github.com/stretchr/testify
go mod tidy
go clean -testcache

go test -v -cover ./db/sqlc
go test -v -count=1 -cover ./db/sqlc

https://docs.github.com/en/actions/use-cases-and-examples/using-containerized-services/creating-postgresql-service-containers
https://github.com/golang-migrate/migrate/tree/master/cmd/migrate

go get -u github.com/gin-gonic/gin
go get github.com/go-playground/validator/v10
go get github.com/spf13/viper
go get github.com/golang/mock/mockgen@v1.6.0
```