
FROM node:14.17.5
WORKDIR usr/src/app
COPY package*.json ./
COPY . .
RUN npm install
EXPOSE 3005
CMD ["node", "app.js"]
