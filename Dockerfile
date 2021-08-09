FROM node
RUN apt update && apt upgrade -y
COPY . pokemon-showdown
WORKDIR pokemon-showdown
RUN ./build
ENTRYPOINT ./pokemon-showdown 8081 --no-security
