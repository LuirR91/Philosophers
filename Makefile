# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: luiribei <luiribei@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/03/03 11:15:03 by luiribei          #+#    #+#              #
#    Updated: 2025/03/03 12:16:05 by luiribei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= philosophers

LIBFT			=	./libft/libft.a
HEADER			=	./src/philosophers.h
INC				=	includes/
SRC_DIR			=	sources/
OBJ_DIR			=	objects/

CC				=	@cc
CFLAGS			=	-Wall -Werror -Wextra -g
RM				=	@rm -f

PHILO_DIR		=	$(SRC_DIR)init.c/
					$(SRC_DIR)main.c/
					$(SRC_DIR)monitor.c/
					$(SRC_DIR)routine_actions.c/
					$(SRC_DIR)threads.c/
					$(SRC_DIR)utils.c/

SRCS			=	$(PHILO_DIR)

OBJS			=	$(patsubst $(SRC_DIR)%.c, $(OBJ_DIR)%.o, $(SRCS))

all:			$(NAME)

$(NAME):		$(OBJS) $(LIBFT)
				@echo "\033[1;32mMake .o and executable.\033[0m"
				@$(CC) $(CFLAGS) $(OBJS) $(LIBFT) -o $(NAME)
				@echo "\033[1;32m$(NAME) has been successfully built!\033[0m"

$(LIBFT):
				@make -s -C ./libft

$(OBJ_DIR)%.o:	$(SRC_DIR)%.c
				@mkdir -p $(@D)
				@$(CC) $(CFLAGS) -I$(INC) -c $< -o $@

clean:
				$(RM) -r $(OBJ_DIR)
				@make -s clean -C ./libft
				@echo "\033[1;31mClean .o files.\033[0m"

fclean:			clean
				$(RM) $(NAME)
				@make -s fclean -C ./libft
				@echo "\033[1;31mClean executable/s.\033[0m"

re:				fclean all

.PHONY:			clean fclean re