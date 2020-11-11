# FROM ubuntu
# WORKDIR /usr/src/app
# COPY . .
# RUN apk update && \
#     apk add --update docker openrc && \
#     rc-update add docker boot && \
#     apk add py-pip && \
#     pip install docker-compose
# RUN ./install.sh
# RUN ./docker_setup
# CMD ["docker-compose", "up"]

FROM tryretool/backend:latest

CMD ./docker_scripts/start_api.sh
