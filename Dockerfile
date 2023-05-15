FROM node:18-alpine

WORKDIR /var/www/myapp

#we can also copy package.json and then run npm install 

RUN npm install redis 

RUN npm install mongodb

# copy app.js or the source code
COPY . .

EXPOSE 3000

# Start the application
CMD ["node", "app.js"]