FROM node:16-alpine
# Adding build tools to make yarn install work on Apple silicon / arm64 machines
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]