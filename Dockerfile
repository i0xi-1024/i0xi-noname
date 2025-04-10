FROM node:22

WORKDIR /app

COPY ./docker/* ./

RUN npm install -g deno && deno install

COPY . .

EXPOSE 8080
EXPOSE 8089

CMD [ "sh","./start.sh" ]
