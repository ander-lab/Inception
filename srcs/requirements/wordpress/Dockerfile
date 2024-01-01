# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajimenez <ajimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/01 12:12:21 by ajimenez          #+#    #+#              #
#    Updated: 2024/01/01 17:36:46 by ajimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye-slim

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get update && apt-get install -y \
    php8.3-fpm \
    php8.3-mysql \
    php8.3-gd \
    php8.3-curl \
    php8.3-xml \
    php8.3-mbstring \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget -qO- https://wordpress.org/wordpress-6.4.2.tar.gz | tar xvz -C /var/www/html/

RUN rm wordpress-6.4.2.tar.gz

CMD ["php-fpm8.3", "--nodaemonize"]
