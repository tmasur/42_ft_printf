# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmasur <tmasur@mail.de>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/21 18:21:21 by tmasur            #+#    #+#              #
#    Updated: 2022/02/03 01:52:45 by tmasur           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		:=	libftprintf.a

LIBFT_DIR	:= ./libft

CFLAGS		:=	-Wall -Werror -Wextra

NOLINKING	:=	-c

SRC			:=	ft_printf.c \
				ft_printf_helper.c \
				libft/ft_putnbr_fd.c \
				libft/ft_putchar_fd.c \
				libft/ft_putnbr_fd.c \
				libft/ft_putstr_fd.c \
				libft/ft_strlen.c \

OBJ			:=	$(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $^

%.o: %.c
	@gcc $(CFLAGS) $(NOLINKING) $< -o $@

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re main
