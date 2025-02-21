FROM httpd:2.4.63

RUN apt-get update && apt-get install -y \
    certbot \
    python3-certbot-apache \
    && rm -rf /var/lib/apt/lists/*

COPY ./apache-config/httpd.conf /usr/local/apache2/conf/

COPY ./apache-config/sites-available/000-default.conf /usr/local/apache2/conf/extra/

RUN rm -rf /usr/local/apache2/htdocs/index.html
COPY ./html/index.html /usr/local/apache2/htdocs/
COPY ./html/main.css /usr/local/apache2/htdocs/

RUN mkdir -p /etc/ssl/private /etc/ssl/certs
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/selfsigned.key \
    -out /etc/ssl/certs/selfsigned.crt \
    -subj "/CN=enzo-palermo.com"
RUN a2enmod ssl
EXPOSE 80 443

CMD ["apachectl", "-D", "FOREGROUND"]