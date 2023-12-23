# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajimenez <ajimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/22 17:41:40 by ajimenez          #+#    #+#              #
#    Updated: 2023/12/23 11:49:57 by ajimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y mariadb-server mariadb-client bash neovim systemctl

RUN sleep 10

COPY ./tools/setup_mariadb.sh .

RUN chmod 100 setup_mariadb.sh

RUN ./setup_mariadb.sh
