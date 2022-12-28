FROM alpine:3.14.2
RUN apk update
RUN apk add --no-cache \
   build-base \
   curl \
   git \
   linux-headers \
   nodejs \
   npm \
   py3-pip \
   python3 \
   python3-dev \
   sqlite
RUN pip3 install --upgrade pip

WORKDIR /opt/showcase

RUN npm init -y
RUN apk add sqlite
RUN npm install sqlite3 --verbose --build-from-source
