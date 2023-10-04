FROM node:19.7.0-alpine
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 9000
CMD ["npm","run","start"]
