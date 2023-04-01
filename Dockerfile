FROM node

WORKDIR /usr/eriona-nextjs-app/

COPY package*.json /usr/eriona-nextjs-app

RUN npm install

COPY . /usr/eriona-nextjs-app

RUN npm run build

COPY . /usr/eriona-nextjs-app

EXPOSE 3000

CMD ["npm", "run", "start"]