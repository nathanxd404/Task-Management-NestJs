# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy your application files to the container
COPY . .

# Install production dependencies and build the application
RUN yarn
RUN yarn build

# Expose the port your application will run on
EXPOSE 3000

# Define the command to start your application
CMD ["node", "dist/main.js"]
