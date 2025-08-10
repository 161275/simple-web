# FROM node:18-alpine
# COPY ./ ./
# RUN npm install
# CMD ["npm", "start"]

FROM node:14-alpine

# Set working directory
# WORKDIR /app

# Copy only package files first
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port
# EXPOSE 4000

# Run the app
CMD ["npm", "start"]
