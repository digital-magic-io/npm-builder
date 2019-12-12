FROM node:slim

RUN apt-get update && apt-get upgrade -y
RUN apt-get install xvfb libgtk2.0-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 gettext-base -y

RUN npm -g config set user root
RUN npm install -g cypress
RUN cypress verify
