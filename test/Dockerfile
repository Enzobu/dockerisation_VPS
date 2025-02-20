FROM httpd:2.4.63

RUN apt-get update && apt-get install -y \
    certbot \
    python3-certbot-apache \
    && rm -rf /var/lib/apt/lists/*

COPY ./apache-config/httpd.conf /usr/local/apache2/conf/
COPY ./apache-config/ssl.conf /usr/local/apache2/conf/extra/

COPY ./apache-config/sites-available/000-default.conf /usr/local/apache2/conf/extra/

COPY ./html /var/www/html/

COPY ./certificates /etc/ssl/certs/

COPY ./certificates/cert.pem /etc/ssl/certs/
COPY ./certificates/privkey.pem /etc/ssl/private/
COPY ./certificates/chain.pem /etc/ssl/certs/

RUN a2enmod mpm_event

EXPOSE 80 443

CMD ["sh", "-c", "if ! certbot certificates; then certbot --apache -d enzo-palermo.com; fi && apachectl -D FOREGROUND"]