FROM node:latest
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 80
VOLUME [ "/app/node-module" ]
CMD [ "npm", "start" ]


#Build command :- docker build -t node-project:v1.0.0 .
#Run Commaned:- docker run -d --rm -p 3000:80 --name feedback-app -v node1:/app/feedback -v $(pwd):/app node-project:v1.0.0