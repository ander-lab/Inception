FROM debian:bullseye-slim

ENV DB_HOST="127.0.0.1"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    curl \
    vim    \
    less \
    php \
    php-fpm \
    php-mysql \
    php-mysqli \
    mariadb-client \
	bash \
	mariadb-client \
	&& rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp


COPY ./tools/create_wordpress.sh /tmp
#COPY ./conf/index.php    /var/www/html/wordpress/index.php
RUN chmod +x /tmp/create_wordpress.sh


WORKDIR /var/www/html/wordpress

CMD ["bash", "/tmp/create_wordpress.sh"]


