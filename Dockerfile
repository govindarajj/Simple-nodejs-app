# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files first for better layer caching
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the app
COPY . .

# Expose app port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
