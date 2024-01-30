# Creates layers of dependencies like we could build an OS layer.
FROM node:18-alpine

# Create a app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

# Run npm install
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]

# docker build -t semicolonised/express-web-app:v1 . ----- -t is for tags
# docker run -d -p 8080:8080 a82cc0482fd1 ------ image id
# docker images ------ get all images
# docker ps ------ show running containers
# docker ps -a (shows all the containers created)
# docket rm <container_id> remove the container
# docker logs <container_id>
# docker stop <container_id>
# docker exec -it <container_id> /bin/bash ------- -it is for interactive mode
# docker exec -it <container_id> /bin/sh ------- -it is for interactive mode
# curl -i localhost:5000
# docker kill <container_id>


# docker mount volume to running continer
# docker run -d -p container_port:8080 -v $(pwd):/app semicolonised/express-web-app:v1
# docker run -d -p 8001:5006 -v $(pwd):/app --env-file ./.env semicolonised/express-web-app:v3
# docker run -d -p 8001:5001 -v $(pwd):/app -e PORT=5001 semicolonised/express-web-app:v3