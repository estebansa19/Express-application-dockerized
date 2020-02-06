FROM node:10

WORKDIR /usr/src/

COPY ["package.json", "package-lock.json", "/usr/src/"]

RUN npm install

COPY [".", "/usr/src/"]

EXPOSE 3000

CMD ["npx", "nodemon", "--legacy-watch", "index.js"]
