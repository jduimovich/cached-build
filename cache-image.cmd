
set REG=default-route-openshift-image-registry.apps-crc.testing:5000

docker login -u developer -p developer %REG%
docker pull docker.io/node 
docker tag docker.io/node %REG%/node
docker push %REG%/node