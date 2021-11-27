# Use the official Node 8 image.
# https://hub.docker.com/_/node 
FROM image-registry.openshift-image-registry.svc:5000/livedemo/cached-build:daccd1f

# Create and change to the app directory.
WORKDIR /usr/src/app

COPY . . 

# Configure and document the service HTTP port.
ENV PORT 8080
EXPOSE $PORT

# Run the web service on container startup.
CMD [ "node", "app.js" ]

