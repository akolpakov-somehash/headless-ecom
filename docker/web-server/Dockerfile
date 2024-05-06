FROM node:latest

WORKDIR /usr/src/app

RUN git clone https://github.com/akolpakov-somehash/headless-ecom-webserver.git .

RUN npm install -g @angular/cli

RUN npm install
RUN npx tsc

CMD ["node", "dist/app.js"]