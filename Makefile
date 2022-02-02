# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmasur <tmasur@mail.de>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/21 18:21:21 by tmasur            #+#    #+#              #
#    Updated: 2022/02/02 02:34:10 by b                ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		:=	libftprintf.a

LIBFT_DIR	:= ./libft

CFLAGS		:=	-Wall -Werror -Wextra

NOLINK		:=	-c

SRC			:=	ft_printf.c \
				ft_printf_helper.c \
				libft/ft_putnbr_fd.c \
				libft/ft_putchar_fd.c \
				libft/ft_putnbr_fd.c \
				libft/ft_putstr_fd.c \
				libft/ft_strlen.c \
				main.c

OBJ			:=	$(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) $(LIBFT_A)
	@ar rcs $(NAME) $^

%.o: %.c
	@gcc $(CFLAGS) $(NOLINK) $< -o $@

$(LIBFT_A):
	@cd $(LIBFT_DIR); $(MAKE)

clean:
	@cd $(LIBFT_DIR); $(MAKE) clean
	@rm -f $(OBJ)

fclean: clean
	@cd $(LIBFT_DIR); $(MAKE) fclean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re main
