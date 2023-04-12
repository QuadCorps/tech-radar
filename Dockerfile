FROM node:lts

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# copying all the files from your file system to container file system
COPY package.json .

# install all dependencies
RUN yarn

# copy other files as well
COPY ./ .

#expose the port
EXPOSE 3000

# command to run when intantiate an image
CMD ["yarn","start"]