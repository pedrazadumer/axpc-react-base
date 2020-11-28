FROM node:13.12.0-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
#COPY hello-world/package.json ./
#COPY hello-world/package-lock.json ./
RUN npm install
#RUN npm install react-scripts@3.4.1 -g --silent
#COPY hello-world ./
CMD ["npm", "start"]  