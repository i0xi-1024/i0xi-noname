FROM node:22

WORKDIR /app

COPY ./docker/* ./

RUN npm install ws body-parser@1.20.3 express@4.21.2 minimist@1.2.8 --save && npm install -g deno

COPY . .

EXPOSE 8080
EXPOSE 8089

CMD [ "sh","./start.sh" ]
