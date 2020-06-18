#!/bin/bash
TETST_ENV="localhost"
TEST_URL_VARIABLE="https://ya.ru/"
image="pupjestts"

echo "----------TEST_PROJECT----------"
echo $TETST_ENV at $TEST_URL_VARIABLE
echo Using Docker image: $image 
echo "--------------------------------"

docker build -t pupjestts ./docker/image/
docker-compose -f docker/docker-compose.yml up -d 
imageName=$(docker ps -qf "name=$image")
docker exec $imageName sh -c "npm install" 
#docker exec $imageName sh -c "./scripts/PreperingFolders.sh"
docker exec $imageName sh -c "./scripts/entrypoint.sh"
docker exec $imageName sh -c 'npm run jest' 
logPath=${reporPath:1:1}:${reporPath:2:50}
echo -e "Report file at  \e[92m$logPath\e[0m"
read -n 1 -s -r -p "Press any key to continue"
#docker-compose -f docker/docker-compose.yml kill