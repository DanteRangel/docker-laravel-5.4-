#delete network
docker network rm -f  my-network

#create network
docker network create --subnet 10.10.10.0/24 --gateway 10.10.10.1 -d bridge my-network 