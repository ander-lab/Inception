# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajimenez <ajimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/23 14:05:25 by ajimenez          #+#    #+#              #
#    Updated: 2024/01/01 20:07:20 by ajimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	@docker build -t mariadb_inception ./srcs/requirements/mariadb/
	@docker build -t nginx_inception ./srcs/requirements/nginx/
	@docker-compose -f ./srcs/docker-compose.yml up -d

fclean:
	@docker-compose -f ./srcs/docker-compose.yml stop
	@docker system prune -af
	@docker volume rm srcs_mariadb_volume -f
	@docker volume rm srcs_wordpress_volume -f
	@docker volume prune -f

re: fclean all

.PHONY: all fclean re
