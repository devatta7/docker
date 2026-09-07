FROM node:24

WORKDIR /app

COPY package.json . 

RUN npm install

COPY . .

EXPOSE 4000 

CMD [ "npm" , "run" , "start:dev" ]

# --> Docker Commands - Notes

# docker build -t imageName .
# Build an Image using the Dockerfile in the current directory

# docker image ls
# List all Docker Images

# docker stop ContainerName
# Stop a running Container

# docker run -p 4000:4000 imageName
# Run a Container and map port 4000 on the host to port 4000 in the Container

# docker run -it imageName bash
# Create a new Container and open a Bash terminal inside it

# docker ps
# List running Containers

# docker ps -a
# List all Containers, including stopped Containers

# ${PWD}
# Get the current working directory in PowerShell

# %cd%
# Get the current working directory in Windows CMD

# docker run --name ContainerName -v "${PWD}:/app:ro" -v /app/node_modules -d -p 4000:4000 imageName
# Run a Container with a Bind Mount, an Anonymous Volume for node_modules,
# Detached mode, and port mapping

# -v "${PWD}:/app:ro"
# Bind Mount: map the project folder on the host to /app inside the Container
# ro = Read Only

# -v /app/node_modules
# Create an Anonymous Volume for /app/node_modules

# docker run --name express-app -v "${PWD}\src:/app/src:ro" -d -p 4000:4000 imageName
# Bind Mount the src folder from the host to /app/src inside the Container
# ro = Read Only
# Run the Container in Detached mode and map port 4000

# docker logs ContainerName
# Show the Container logs

# docker rm -f ContainerName
# Force remove a Container

# docker exec -it ContainerName bash
# Open a Bash terminal inside an existing running Container

# docker image rm imageName
# Remove a Docker Image