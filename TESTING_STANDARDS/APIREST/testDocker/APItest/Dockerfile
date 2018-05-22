FROM node:7.8-slim

# App workdir
WORKDIR /app

# Install dependecies
RUN npm install -g newman
RUN npm --allow-root install

# Build app source code
COPY . ./

CMD newman run ./TESTING_STANDARDS/APIREST/testDocker/APItest/testDockerExercise.postman_collection.json
