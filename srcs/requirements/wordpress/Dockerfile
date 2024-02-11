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
	wget \
	&& rm -rf /var/lib/apt/lists/*


COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf


RUN	wget https://wordpress.org/latest.tar.gz \
	&& tar -xzvf latest.tar.gz \
	&& rm latest.tar.gz

COPY ./conf/wp-config.php /wordpress

#COPY wordpress/ /var/www/html/

COPY ./tools/create_wordpress.sh /tmp
#COPY ./conf/index.php    /var/www/html/wordpress/index.php
RUN chmod +x /tmp/create_wordpress.sh
#WORKDIR /var/www/html/

CMD ["bash", "/tmp/create_wordpress.sh"]

