#set correct local/docker root to access local files

#remove default env vars for that
sed -i '/LOCAL_ROOT=/d' .env
sed -i '/LOCAL_DOCKER_MOUNT=/d' .env

#add new env vars with the correct value
echo "LOCAL_ROOT=${PWD}/local" >> .env
echo "LOCAL_DOCKER_MOUNT=${PWD}/local" >> .env