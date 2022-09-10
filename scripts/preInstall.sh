mkdir -p ./db;
mkdir -p ./tmp;
mkdir -p ./workspace;
mkdir -p ./data;
mkdir -p ./local;
mkdir -p ./temporal;

chown -R 1001:1001 ./db;
chown -R 1001:1001 ./tmp;
chown -R 1001:1001 ./workspace;
chown -R 1001:1001 ./data;
chown -R 1001:1001 ./local;
chown -R 1001:1001 ./temporal;


#set correct local/docker root to access local files

#remove default env vars for that
sed -i '/LOCAL_ROOT=/d' .env
sed -i '/LOCAL_DOCKER_MOUNT=/d' .env

#add new env vars with the correct value
echo "LOCAL_ROOT=${PWD}/local" >> .env
echo "LOCAL_DOCKER_MOUNT=${PWD}/local" >> .env

