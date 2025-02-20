FROM ubuntu/apache2:2.4-22.04_beta

RUN apt-get update && apt-get install -y \
    git \
    openssh-client \
    unzip \
    curl \
    php \
    php-cli \
    php-mysql \
    nano \
    mysql-client\
    libapache2-mod-php \
    && apt-get clean

ADD id_rsa /root/.ssh/id_rsa

RUN chmod 600 /root/.ssh/id_rsa && ssh-keyscan github.com >> /root/.ssh/known_hosts

RUN rm -rf /var/www/html && git clone git@github.com:Enzobu/Hi-mix.git /var/www/html

RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

WORKDIR /var/www/html

# RUN a2enmod rewrite

EXPOSE 80

CMD ["apache2-foreground"]


