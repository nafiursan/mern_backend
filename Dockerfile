# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Clone your GitHub repository
COPY . /app

# Install dependencies for the root project
RUN npm install

# Change to the "backend" directory and install its dependencies
WORKDIR /app/backend
RUN npm install
# RUN npm install -g nodemon

# Expose ports 5000
EXPOSE 5000

# Change to the "backend" directory and start the backend
WORKDIR /app/backend
CMD ["npm", "start"]
