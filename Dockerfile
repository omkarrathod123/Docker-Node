FROM node:latest
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80

CMD [ "node", "server.js" ]


#Build command :- docker build -t node-project:v1.0.0 .
#Run Commaned:- docker run --rm --name node1 -d -p 300:80 -v nodes:/app/feedback node-project:v1.0.0