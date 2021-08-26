FROM node:latest

LABEL author="nithin_manuel"

ENV NODE_ENV=production 
ENV PORT=3000

COPY . /app

WORKDIR /app



RUN npm install

VOLUME [ "/app" ]



EXPOSE $PORT 

ENTRYPOINT ["npm", "start"]



