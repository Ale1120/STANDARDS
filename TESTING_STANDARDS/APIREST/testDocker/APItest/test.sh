set -x
set +e
docker build -t imagetestdockerexcercise -f ./TESTING_STANDARDS/APIREST/testDocker/APItest/Dockerfile .
set -x
set +e
docker run --rm imagetestdockerexcercise
