FROM node:10

# Create app directory
WORKDIR /srv/micro-service-template-js

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
RUN npm build
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3003
CMD ["npm",  "run", "dev" ]#
