FROM node:boron

# Add package.json first to avoid running npm install on every change to work dir
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /usr/src/app && cp -a /tmp/node_modules /usr/src/app

WORKDIR /usr/src/app

ADD ./ /usr/src/app/

ENV NODE_ENV=production

EXPOSE 80

CMD ["node", "app.js"]
