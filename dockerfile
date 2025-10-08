# Simple production Dockerfile for Express app
FROM node:16

# App directory
WORKDIR /app

# Install only production dependencies first (layer caching)
COPY package*.json ./
RUN npm install --only=production

# Copy the rest of the app
COPY . .

# The sample app typically listens on 8080
EXPOSE 8080

# Start
CMD ["npm","start"]
