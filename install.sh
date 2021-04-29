cd $GITHUB_WORKSPACE
git clone https://github.com/nats-io/nats-server.git
cd nats-server
go build main.go
mkdir -p ~/.local/bin
cp main ~/.local/bin/nats-server
cd ..
rm -rf nats-server
nats-server -v
