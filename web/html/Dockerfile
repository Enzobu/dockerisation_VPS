FROM php:8.3.11-apache

RUN apt-get update && apt-get install -y \
    libicu-dev \
    libpq-dev \
    libonig-dev \
    unzip \
    git \
    zip \
    && docker-php-ext-install \
    intl \
    pdo_mysql \
    opcache \
    && docker-php-ext-enable intl pdo_mysql opcache

ADD ../../id_rsa /root/.ssh/id_rsa

RUN chmod 600 /root/.ssh/id_rsa && ssh-keyscan github.com >> /root/.ssh/known_hosts

COPY ./php.ini /usr/local/etc/php/

RUN a2enmod rewrite

RUN rm -rf /var/www/html/* && \
    git clone git@github.com:Enzobu/enzo-palermoV2.00.git /var/www/html

RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

WORKDIR /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]
