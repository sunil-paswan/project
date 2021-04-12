From node:latest
RUN mkdir -p /app/src
WORKDIR /app/src
COPY package*.json .
RUN npm install -g npm@7.9.0
RUN npm install 
COPY . .
EXPOSE 3000
CMD ["npm" , "start"]
