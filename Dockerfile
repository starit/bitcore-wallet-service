FROM node:4-onbuild

MAINTAINER [Starit](http://blog.star404.com)
EXPOSE 3232 
WORKDIR /usr/src/app
ADD docker/config.js /usr/src/app/config.js
# RUN apt-get update && apt-get install -y --no-install-recommends \
# mongodb-clients \
# && rm -rf /var/lib/apt/lists/*

CMD tail -f logs/bws.log
# RUN npm install && \
#     npm start
