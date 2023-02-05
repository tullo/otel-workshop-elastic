go build -o elastic
env --debug $(cat .env | grep -v '^#') ./elastic
