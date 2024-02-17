# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajimenez <ajimenez@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/23 14:05:25 by ajimenez          #+#    #+#              #
#    Updated: 2024/02/17 15:37:54 by ajimenez         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	@mkdir -p $$HOME/inception_data/mariadb_volume
	@mkdir -p $$HOME/inception_data/wordpress_volume
	@docker build -t mariadb_inception ./srcs/requirements/mariadb/
	@docker build -t wordpress_inception ./srcs/requirements/wordpress/
	@docker build -t nginx_inception ./srcs/requirements/nginx/
	@docker-compose -f ./srcs/docker-compose.yml up -d

fclean:
	@docker-compose -f ./srcs/docker-compose.yml stop
	@docker system prune -af
	@docker volume rm srcs_mariadb_volume -f
	@docker volume rm srcs_wordpress_volume -f
	@docker volume prune -f

clean-volumes:
	@docker-compose -f ./srcs/docker-compose.yml stop
	@docker-compose -f ./srcs/docker-compose.yml down -v
	@docker system prune -af
	@docker volume rm srcs_mariadb_volume
	@docker volume rm srcs_wordpress_volume
	@rm -rf $$HOME/inception_data/*

re: fclean all

.PHONY: all fclean re
