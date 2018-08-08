# https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430
docker volume rm $(docker volume ls -qf dangling=true)
docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }')
docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')
docker rm $(docker ps -qa --no-trunc --filter "status=exited")
