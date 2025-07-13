# Use an official Node.js base image
FROM node:18

# Create and set working directory
WORKDIR /app

# Copy dependency files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Build the app during image build
RUN npm run build

# Expose port
EXPOSE 3000

# Start the app when the container runs
CMD ["npm", "start"]
