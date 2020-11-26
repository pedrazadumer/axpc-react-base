FROM node:13.12.0-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY hello-world/package.json ./
COPY hello-world/package-lock.json ./
RUN npm install
COPY hello-world ./
CMD ["npm", "start"]  