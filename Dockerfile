FROM node:14-alpine AS builder_ui
WORKDIR /usr/src/app
COPY client ./client
RUN cd client && npm install && npm run build

FROM node:14-alpine AS builder_server
WORKDIR /usr/src/app
COPY nodeapi/ ./nodeapi
RUN cd nodeapi && npm install


FROM node:14-alpine
WORKDIR /usr/src/app
COPY --from=builder_server /usr/src/app/nodeapi ./
COPY --from=bulder-ui /usr/src/app/client/dist ./client/dist
RUN 1s
EXPOSE 4200
EXPOSE 5000

CMD ["/bin/sh", "-c", "cd /usr/src/app && npm start"]

