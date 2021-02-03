# Specify a base image
FROM node:alpine

WORKDIR /usr/src/code
ADD . /code

COPY package.json yarn.lock ./

# Run yarn install
RUN npm install -g npm@7.5.2
RUN yarn install

COPY . .

# Build the project
CMD ["yarn", "start"]


EXPOSE 80