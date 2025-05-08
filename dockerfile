FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install a static server
RUN npm install -g http-server

# Copy your HTML and other assets
COPY . .

# Expose the port
EXPOSE 8080

# Start the static server
CMD ["http-server", "-p", "8080"]
