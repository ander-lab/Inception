# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajimenez <ajimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/01/01 19:04:33 by ajimenez          #+#    #+#              #
#    Updated: 2024/01/17 20:06:14 by ajimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye-slim

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nginx openssl -y && \
    rm -rf /var/lib/apt/lists/*

RUN echo "<h1>ALBA, TU PUTA MADRE CALVA</h1>" > /var/www/html/index.html

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-keyout /etc/nginx/ssl/ajimenez.key \
		-out /etc/nginx/ssl/ajimenez.crt \
		-subj "/C=ES/ST=Madrid/L=Madrid/O=42Madrid/OU=ajimenez/CN=ajimenez"

COPY ./conf/nginx.conf /etc/nginx/conf.d

RUN mkdir -p /run/nginx

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
