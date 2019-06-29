FROM node:latest

RUN mkdir /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH
RUN yarn

EXPOSE 3000
CMD [ "npm", "start" ]

