FROM node:latest

WORKDIR /usr/src/app

RUN git clone https://github.com/akolpakov-somehash/headless-ecom-frontend.git .

RUN npm install -g @angular/cli

RUN npm install

CMD ["ng", "serve", "--host", "0.0.0.0", "--disable-host-check"]