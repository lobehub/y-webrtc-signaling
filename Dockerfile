# Use the official Node.js image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Make the script executable
RUN chmod +x index.js

# Expose the port the app runs on
EXPOSE 4444

# Command to run the app
CMD ["node", "index.js"]
