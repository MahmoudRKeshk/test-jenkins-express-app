# Use Node.js base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]