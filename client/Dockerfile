FROM node:14.21.2-alpine3.17 AS builder_ui
WORKDIR /usr/src/app
COPY . ./client
RUN cd client && npm install && npm run build --prod

FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder_ui /usr/src/app/client/dist/client/ /usr/share/nginx/html


COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 4200
EXPOSE 4200
