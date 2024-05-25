# Use the spritsail/fivem image as the base image
FROM spritsail/fivem

# Set the working directory in the container
WORKDIR /app

# Expose the port TXAdmin runs on (default is 40120)
EXPOSE 40120

# Run TXAdmin
CMD [ "node", "src/index.js" ]
