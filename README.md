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
docker run --name some-postgres \
  -p 5433:5432 \
  -e POSTGRES_PASSWORD=root \
  -d postgres

docker exec -it some-postgres psql -U postgres
select now();

\l
docker logs some-postgres | docker logs -f some-postgres


docker exec -it some-postgres psql -U postgres
    
```