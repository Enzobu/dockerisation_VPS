FROM phpmyadmin:5.2.2-apache

WORKDIR /var/www/html

RUN apt update -y && \
    apt install unzip -y

COPY ./themes/blueberry.zip /var/www/html/themes/
COPY ./themes/boodark.zip /var/www/html/themes/

RUN unzip /var/www/html/themes/blueberry.zip -d /var/www/html/themes/ && \
    unzip /var/www/html/themes/boodark.zip -d /var/www/html/themes/

RUN rm -rf \
    /var/www/html/themes/blueberry.zip \
    /var/www/html/themes/boodark.zip 

EXPOSE 80

CMD ["apache2-foreground"]
