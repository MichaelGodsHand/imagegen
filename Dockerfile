# Use an official Node.js image as the base
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app's source code
COPY . .

# Expose port 8080
EXPOSE 8080

# Set environment variable for port (optional but good practice)
ENV PORT=8080

# Start the server
CMD ["node", "main.js"]
