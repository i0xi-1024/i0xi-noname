FROM node:20

WORKDIR /app

COPY ./docker/* ./

RUN npm install -g deno && npm install ws && deno install

COPY . .

EXPOSE 8080
EXPOSE 8089

CMD [ "sh","./start.sh" ]
