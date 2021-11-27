docker login -u developer -p developer 
pull docker.io/node 
docker tag docker.io/node default-route-openshift-image-registry.apps-crc.testing:5000/node
docker push default-route-openshift-image-registry.apps-crc.testing:5000/node