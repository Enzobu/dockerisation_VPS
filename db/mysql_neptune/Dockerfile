FROM mysql:9.2.0

ENV MYSQL_DATABASE=neptune
ENV MYSQL_USER=neptune
ENV MYSQL_PASSWORD=N€pTune
ENV MYSQL_ROOT_PASSWORD=N€pTune

ADD ./init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
