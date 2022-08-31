#FROM openjdk:20-jdk-slim-bullseye
#RUN apt-get update && apt-get install -y mariadb-client

FROM openjdk:alpine
RUN apk add mariadb-client

COPY run.sh mariadb* Mariadb* /app/

RUN chmod +x /app/run.sh

WORKDIR /app

CMD /app/run.sh
