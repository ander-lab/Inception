# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajimenez <ajimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/22 17:41:40 by ajimenez          #+#    #+#              #
#    Updated: 2024/01/01 19:04:48 by ajimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye-slim

RUN apt-get update -y && apt-get install -y mariadb-server mariadb-client bash neovim systemctl

#RUN sleep 10

COPY ./tools/setup_mariadb.sh /setup_mariadb.sh

RUN chmod +x /setup_mariadb.sh

RUN ./setup_mariadb.sh
CMD ["mysqld_safe"]
