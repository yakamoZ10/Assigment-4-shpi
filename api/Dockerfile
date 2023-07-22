FROM node

# Create app directory
WORKDIR /usr/api

# Copy package*.json to the workdir
COPY package*.json /usr/api/

# Install NEXTjs dependencies
RUN npm install

COPY . /usr/api/

# Build NEXTjs project
RUN npm run build

# Copy NEXTjs build artifact to working directory
COPY . /usr/api/

# Expose port 3000
EXPOSE 3000

# Run container with this command
CMD [ "npm", "run", "start" ]