# We name the phase as builder
# We are only going to use build directory in the next phase

# Build Phase
FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# The build directory is going to be created in working directory /app
# The path to build directory is /app/build

# Just putting a FROM statement mean that new phase has started
# Run Phase
FROM nginx
# Required for AWS Elastic Beanstalk
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html

# We don't need start command
# The default start command of the nginx container starts nginx
