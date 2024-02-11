# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajimenez <ajimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/22 17:41:40 by ajimenez          #+#    #+#              #
#    Updated: 2024/02/05 19:37:38 by ajimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:bullseye

RUN apt-get update -y && apt-get install -y mariadb-server mariadb-client bash neovim systemctl 	iputils-ping 

#RUN sleep 10

COPY ./tools/setup_mariadb.sh /setup_mariadb.sh

RUN chmod +x /setup_mariadb.sh

#EXPOSE 3306
#RUN ./setup_mariadb.sh
CMD ["/bin/bash", "/setup_mariadb.sh"]
#CMD ["mysqld_safe"]

