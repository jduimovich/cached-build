# Use the official Node 8 image.
# https://hub.docker.com/_/node 
FROM openshift/local-node

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image.
COPY package.json ./

# Install production dependencies.
RUN npm install --only=production

# Copy local code to the container image.
COPY . . 

# Configure and document the service HTTP port.
ENV PORT 8080
EXPOSE $PORT

# Run the web service on container startup.
CMD [ "node", "app.js" ]

