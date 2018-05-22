set -x
set +e
docker stop hellocontainerpip
set -x
set +e
docker build -t imagehelloworld -f ./TESTING_STANDARDS/APIREST/testDocker/Dockerfile .
set -x
set +e
docker run --rm -d -p 4001:80 --name hellocontainerpip imagehelloworld
