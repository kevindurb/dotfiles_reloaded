# https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430

echo "Checking volumes..."
VOLUMES=$(docker volume ls -qf dangling=true)
if [[ $(echo "$VOLUMES" | wc -l) -ge 1 ]]
then
  echo "Deleting volumes..."
  docker volume rm $VOLUMES
  echo "Done!"
fi

echo "Checking networks..."
NETWORKS=$(docker network ls | grep "bridge" | awk '/ / { print $1 }')
if [[ $(echo "$NETWORKS" | wc -l) -ge 1 ]]
then
  echo "Deleting networks..."
  docker network rm $NETWORKS
  echo "Done!"
fi

echo "Checking images..."
IMAGES=$(docker images | grep "none" | awk '/ / { print $3 }')
if [[ $(echo "$IMAGES" | wc -l) -ge 1 ]]
then
  echo "Deleting images..."
  docker rmi $IMAGES
  echo "Done!"
fi

echo "Checking containers..."
CONTAINERS=$(docker ps -qa --no-trunc --filter "status=exited")
if [[ $(echo "$CONTAINERS" | wc -l) -ge 1 ]]
then
  echo "Deleting containers..."
  docker rm $CONTAINERS
  echo "Done!"
fi
