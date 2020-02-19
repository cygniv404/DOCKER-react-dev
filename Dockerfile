FROM node:latest
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install --ignore-optional --silent
ADD src /usr/src/app/src
ADD public /usr/src/app/public
CMD ["npm","start"]
