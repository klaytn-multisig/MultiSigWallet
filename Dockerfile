FROM node:14.1.0

RUN apt-get update
RUN apt install -y libusb-1.0-0-dev
WORKDIR /app
COPY . .
WORKDIR /app/dapp
RUN yarn install --ignore-scripts
ENTRYPOINT [ "yarn", "start" ]