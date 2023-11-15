# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /home/ilef/Desktop/myApp

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose the port on which the app runs
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
