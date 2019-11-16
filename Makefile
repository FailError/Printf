# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kbessa <kbessa@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/01 14:51:29 by kbessa            #+#    #+#              #
#    Updated: 2019/10/01 14:52:12 by kbessa           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		=		libftprintf.a
CC			= 		gcc
CFLAGS 		= 		-I includes/ -Wall -Werror -Wextra
OBJ 		= 		$(SRC:.c=.o)

C_OK		=		"\033[35m"
C_GOOD		=		"\033[32m"
C_NO		=		"\033[00m"

SUCCESS		=		$(C_GOOD)SUCCESS$(C_NO)
OK			=		$(C_OK)OK$(C_NO)

SRC =	srcs/ft_char.c				\
		srcs/ft_checkprocent.c		\
		srcs/ft_help.c				\
		srcs/ft_checkstruct.c		\
		srcs/ft_decimal.c			\
		srcs/ft_decimal2.c			\
		srcs/ft_decimal3.c			\
		srcs/ft_float.c				\
		srcs/ft_float2.c			\
		srcs/ft_float3.c			\
		srcs/ft_floatprecnull1.c	\
		srcs/ft_floatprecnull2.c	\
		srcs/ft_odecimal.c			\
		srcs/ft_odecimalmin.c		\
		srcs/ft_pointer.c			\
		srcs/ft_printf.c			\
		srcs/ft_printf2.c			\
		srcs/ft_string.c			\
		srcs/ft_string2.c			\
		srcs/ft_udecimal.c			\
		srcs/ft_udecimalmin.c		\
		srcs/ft_xhex.c				\
		srcs/ft_xhexmin.c			\
		srcs/ft_xhexx.c				\
		srcs/ft_xhexxmin.c

all: $(NAME)

%.o: %.c
	@printf "[ft_printf] Compiling [.:]\r"
	@$(CC) $(CFLAGS) -c $< -o $@
	@printf "[ft_printf] Compiling [:.]\r"

$(NAME): $(OBJ)
	@make -C libft/
	@cp libft/libft.a ./$(NAME)
	@ar rc $@ $^
	@ranlib $@
	@echo "Compiling & indexing" [ $(NAME) ] $(SUCCESS)

clean:
	@make clean -C libft/
	@/bin/rm -f $(OBJ)
	@printf "[ft_printf] Removed object files!\n"

fclean: clean
	@/bin/rm -f $(NAME)
	@make fclean -C libft/
	@echo "Cleaning" [ $(NAME) ] "..." $(OK)

re: fclean all

ifeq ($(shell uname),Darwin)
test: re
	cd tests/tests && $(MAKE) test
else
test: re
	@echo "\n\n\033[45mBuild ok, launch tests on OSX\033[0m\n\n"
	exit 0
endif

.PHONY: all clean fclean re test
