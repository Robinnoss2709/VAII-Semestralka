# Use official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Install pnpm globally
RUN npm install -g pnpm

# Copy package.json and pnpm-lock.yaml files
COPY package.json pnpm-lock.yaml ./

# Install dependencies using pnpm
RUN pnpm install

# Copy the rest of the application code to the container
COPY . .

# Build the SvelteKit application
RUN pnpm run build

# Expose the port on which the application runs
EXPOSE 3000

# Start the application
CMD ["pnpm", "run", "preview", "--", "--port", "3000"]
