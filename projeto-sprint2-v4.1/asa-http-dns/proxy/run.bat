/bin/bash

docker network rm asa-net

docker network create -d bridge asa-net

docker run -d --net=asa-net -p 80:80 --name proxy asa-proxy