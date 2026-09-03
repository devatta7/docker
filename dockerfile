FROM node:24

WORKDIR /app

COPY package.json . 

RUN npm install

COPY . .

EXPOSE 4000 

CMD [ "npm" , "run" , "start:dev" ]

# -- commands --
# docker build -t imageName .
# docker image ls
# docker run -p 4000:4000 imageName
# docker run -it imageName bash
# docker ps
# pwd 
# rm