# syntax=docker/dockerfile:1
FROM node:16.16.0
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client graphviz npm\
  && rm -rf /var/lib/apt/lists/* \
  && curl -o- -L https://yarnpkg.com/install.sh | bash
RUN mkdir /myapp
WORKDIR /myapp
COPY . /myapp
RUN npm install yarn
RUN yarn install
