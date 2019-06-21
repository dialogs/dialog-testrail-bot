FROM node:10

WORKDIR /opt/testrail-bot

COPY . .

RUN npm install

ENV BOT_ENDPOINT=$BOT_ENDPOINT
ENV BOT_TOKEN=$BOT_TOKEN
ENV TEST_RAILS_HOST=$TEST_RAILS_HOST
ENV TEST_RAILS_USER=$TEST_RAILS_USER
ENV TEST_RAILS_PASS=$TEST_RAILS_PASS

CMD ["node", "app/index.js"]
