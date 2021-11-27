# Use the official Node 8 image.
# https://hub.docker.com/_/node 
FROM image-registry.openshift-image-registry.svc:5000/livedemo/single-container-app:86dcdaa

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy local code to the container image.
COPY . . 
# Install production dependencies.
RUN npm install --only=production

# Configure and document the service HTTP port.
ENV PORT 8080
EXPOSE $PORT

# Run the web service on container startup.
CMD [ "node", "app.js" ]

