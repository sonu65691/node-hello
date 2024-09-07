FROM node:18-alpine as build
WORKDIR /app
COPY package.json .
RUN npm install --force
COPY . .
RUN npm run build
EXPOSE 80 
CMD ["npm", "run", "start"]
